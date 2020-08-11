class UsersController < ApplicationController

    before_action :find_user, only: [:show]

    def index
        @users = User.all
        render json: @users
    end

    def show
        render json: @user
    end

    def create
        @user = User.create(user_params)
        render json: @user
    end

    def new
        @user = User.new
        render json: @user
    end

    def destroy
        @user.destroy
        render json: @users
    end

    private

    def user_params
        params.require(:user).permit(:date, :item)
    end

    def find_user
        @user = user.find(params[:id])
    end
end

