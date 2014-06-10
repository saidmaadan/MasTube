class VideosController < ApplicationController
  def index
      @videos = Video.all
    end

    def show
      @video = Video.find(params[:id])
    end

    def edit
      @video = Video.find(params[:id])
    end

    def new
      @video = Video.new
    end

    def update
      @video = Video.find(params[:id])
      @video.update(video_params)
      redirect
    end

    def create
      @video = Video.new(video_params)
      if @video.save
        flash[:success] = 'Video Added!'
        redirect
      else
        render 'new'
      end
    end

    def destroy
      @video = Video.find(params[:id])
      @video.destroy
      redirect
    end

  private

  def video_params
    params.require(:video).permit(:title, :description, :youtube_id)
  end
  def redirect
    redirect_to @video
  end
end
