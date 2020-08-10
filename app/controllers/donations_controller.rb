class DonationsController < ApplicationController

    before_action :find_donation, only: [:show]

    def index
        @donations = Donation.all
        render json: @donations
    end

    def show
        render json: @donation
    end

    def create
        @donation = Donation.create(donation_params)
        render json: @donation
    end

    def new
        @donation = Donation.new
        render json: @donation
    end

    private

    def donation_params
        params.require(:donation).permit!
    end

    def find_donation
        @donation = donation.find(params[:id])
    end

end

