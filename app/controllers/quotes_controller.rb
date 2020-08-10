class QuotesController < ApplicationController

    before_action :find_quote, only: [:show]

    def index
        @quotes = Quote.all
        render json: @quotes
    end

    def show
        render json: @quote
    end

    def create
        @quote = Quote.create(quote_params)
        render json: @quote
    end

    def new
        @quote = Quote.new
        render json: @quote
    end

    private

    def quote_params
        params.require(:quote).permit!
    end

    def find_quote
        @quote = quote.find(params[:id])
    end

end

