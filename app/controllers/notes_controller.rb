class NotesController < ApplicationController

    before_action :find_note, only: [:show, :destroy]

    def index
        @notes = Note.all
        render json: @notes
    end

    def show
        render json: @note
    end

    def create
        @note = Note.create(note_params)
        render json: @note
    end

    def new
        @note = Note.new
        render json: @note
    end

    def destroy
        @note.destroy
        render json: @notes
    end

    private

    def note_params
        params.require(:note).permit!
    end

    def find_note
        @note = note.find(params[:id])
    end
end
