class UserResourcesController < ApplicationController

    before_action :find_user_resource, only: [:show, :destroy]

    def index
        @user_resources = UserResource.all
        render json: @user_resources
    end

    def show
        @user_resource = UserResource.find(params[:id])
        render json: @user_resource
    end

    def new
        @user_resources = UserResource.create(user_resource_params)
        render json: @user_resources
    end

    def destroy
        render json: @user_resources
    end

    private

    def user_resource_params
        params.require(:user_resource).permit(:user_id, :resource_id)
    end

    def find_user_resource
        @user_resource = UserResource.find(params[:id])
    end
end

