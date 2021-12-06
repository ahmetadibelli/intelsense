class CommentsController < ApplicationController
  before_action :set_article, %i[index create]
  before_action :set_comment, %i[update destroy]

  def index
    @comments = @article.comments
  end

  def create
    if @article.comments.create!(params[:comment].merge(user_id: params[:user_id]))
      { success: true, message: 'Comment Added Successfully' }
    else
      { success: false, message: 'Action Failed' }
    end
  end

  def update
    authorize @comment
    if @comment.update!(params[:comment])
      { success: true, message: 'Comment Updated Successfully' }
    else
      { success: false, message: 'Action Failed' }
    end
  end

  def destroy
    authorize @comment
    if @comment.destroy
      { success: true, message: 'Comment Destroyed Successfully' }
    else
      { success: false, message: 'Action Failed' }
    end
  end

  private

  def set_article
    @article = Article.find(params[:article_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end
end
