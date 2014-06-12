class CommentsController < ApplicationController

  def index
    @comments = @video.comments
  end

  def new
    @comment = @video.comments.new
  end

  def create
    @video = Video.find(params[:video_id])
    @comment = @video.comments.new(comment_params)
    if @comment.save
      flash[:success] = 'Your comment successfully posted!'
      redirect_to @video
    else
      render :new
    end
  end

    def destroy
      @comment = Comment.find(params[:video_id])
      @comment.destroy
      redirect_to @video
    end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

  def set_video
    @video = Video.find_by(params[:video_id])
  end
end
