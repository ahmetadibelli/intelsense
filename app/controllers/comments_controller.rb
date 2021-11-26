class CommentsController < ApplicationController
  before_action :set_article, %i[index create]

  def index
    @comments = @article.comments
  end

  def create
    @comment = @article.comments.create!(params[:comment].merge(user_id: params[:user_id]))
  end

  private

  def set_article
    @article = Article.find(params[:article_id])
  end
end
