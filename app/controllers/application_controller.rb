class ApplicationController < ActionController::Base
  include Pundit

    protect_from_forgery with: :exception

    helper_method :current_user, :logged_in?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def current_user
    return nil unless session[:session_token]
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def logged_in?
    !!current_user
  end

  def login(user)
    user.reset_session_token!
    session[:session_token] = user.session_token
    @current_user = user
  end

  def logout
    current_user.reset_session_token!
    session[:session_token] = nil
    @current_user = nil
  end

  def require_logged_in
    unless current_user
      render json: { base: ['Please login to continue'] }, status: 401
    end
  end
end
