class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show update destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  def create
    @article = Article.new(params[:article])
    if @article.save!
      { success: true, message: 'Article Added Successfully' }
    else
      { success: false, message: 'Action Failed' }
    end
  end

  def update
    authorize @article
    if @article.update!(params[:article])
      { success: true, message: 'Article Updated Successfully' }
    else
      { success: false, message: 'Action Failed' }
    end
  end

  def destroy
    authorize @article
    if @article.destroy!
      { success: true, message: 'Article Destroyed Successfully' }
    else
      { success: false, message: 'Action Failed' }
    end
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end
end
