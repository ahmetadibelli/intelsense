class ArticlesController < ApplicationController
  before_action :set_article, only: %i[update destroy]

  def index
    @articles = Article.all
  end

  def create
    @article = Article.new(params[:article])
    if @article.save!
      flash[:success] = 'Article Created Successfuly'
    else
      flash[:error] = 'Article Creation Failed'
    end
  end

  def update
    if @article.update!(params[:article])
      flash[:success] = 'Article Updated Successfuly'
    else
      flash[:error] = 'Article Updation Failed'
    end
  end

  def destroy
    if @article.destroy!
      flash[:success] = 'Article Removed Successfuly'
    else
      flash[:error] = 'Article Removal Failed'
    end
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end
end
