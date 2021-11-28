class LikesController < ApplicationController
  before_action :set_article, %i[index create]

  def index
    @likes = @article.likes
  end

  def create
    if @article.likes.create!(params[:like].merge(user_id: params[:user_id]))
      { success: true, message: 'Article Liked Successfully' }
    else
      { success: false, message: 'Action Failed' }
    end
  end

  private

  def set_article
    @article = Article.find(params[:article_id])
  end
end
