class VideosController < ApplicationController

    before_action :find_video, only: [:show]

    def index
        @videos = Video.all
        render json: @videos
    end

    def show
        render json: @video
    end

    def create
        @video = Video.create(video_params)
        render json: @video
    end

    def new
        @video = Video.new
        render json: @video
    end

    private

    def video_params
        params.require(:video).permit!
    end

    def find_video
        @video = video.find(params[:id])
    end
end

