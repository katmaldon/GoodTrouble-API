class PetitionsController < ApplicationController

    before_action :find_petition, only: [:show]

    def index
        @petitions = Petition.all
        render json: @petitions
    end

    def show
        render json: @petition
    end

    def create
        @petition = Petition.create(petition_params)
        render json: @petition
    end

    def new
        @petition = Petition.new
        render json: @petition
    end

    private

    def petition_params
        params.require(:petition).permit!
    end

    def find_petition
        @petition = petition.find(params[:id])
    end

end
