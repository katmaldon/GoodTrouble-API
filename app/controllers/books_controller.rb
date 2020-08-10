class BooksController < ApplicationController

    before_action :find_book, only: [:show]

    def index
        @books = Book.all
        render json: @books
    end

    def show
        render json: @book
    end

    def create
        @book = Book.create(book_params)
        render json: @book
    end

    def new
        @book = Book.new
        render json: @book
    end

    private

    def book_params
        params.require(:book).permit!
    end

    def find_book
        @book = book.find(params[:id])
    end

end
