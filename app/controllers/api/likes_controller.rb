class Api::LikesController < ApplicationController
  before_action :set_article, %i[index create]
  before_action :set_like, %i[destroy]

  def index
    @likes = @article.likes
    render json: @likes
  end

  def create
    if @article.likes.create!(params[:like].merge(user_id: params[:user_id]))
      { success: true, message: 'Article Liked Successfully' }
    else
      { success: false, message: 'Action Failed' }
    end
  end

  def destroy
    if @like.destroy
      { success: true, message: 'Like Destroyed Successfully' }
    else
      { success: false, message: 'Action Failed' }
    end
  end

  private

  def set_article
    @article = Article.find(params[:article_id])
  end

  def set_like
    @like = Like.find(params[:id])
  end
end
