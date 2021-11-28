class LikesController < ApplicationController
  before_action :set_article, %i[index]

  def index
    @likes = @article.likes
  end

  private

  def set_article
    @article = Article.find(params[:article_id])
  end
end
