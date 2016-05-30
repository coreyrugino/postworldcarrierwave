class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def show

    @comment = Comment.find(params[:id])

  end

  def new
    @comments = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to post_path(@comment.post_id)
    else
      render :new
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to post_path(@comment.post_id)
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to users_path
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :post_id)
  end

end
