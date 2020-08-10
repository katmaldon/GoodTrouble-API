class AudiosController < ApplicationController

    before_action :find_audio, only: [:show]

    def index
        @audios = Audio.all
        render json: @audios
    end

    def show
        render json: @audio
    end

    def create
        @audio = Audio.create(audio_params)
        render json: @audio
    end

    def new
        @audio = Audio.new
        render json: @audio
    end



    private

    def audio_params
        params.require(:audio).permit!
    end

    def find_audio
        @audio = audio.find(params[:id])
    end
end

