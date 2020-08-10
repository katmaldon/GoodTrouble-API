class ResourcesController < ApplicationController

    before_action :find_resource, only: [:show, :update]

    def index
        @resources = Resource.all
        render json: @resources
    end

    def show
        render json: @resource
    end

    def create
        @resource = Resource.create(resource_params)
        #@resource.user_id = current_user.id
        # if resource.valid?
        #     session[:event_id] = resource.id
        #     redirect_to event_path(resource)
        # else
        #     flash[:errors] = resource.errors.full_messages
        #     redirect_to new_event_path
        # end
        render json: @resource
    end

    def new
        @resource = Resource.new
        render json: @resource
    end

    def update
        @resource.update(resource_params)
        # if resource.user_id == current_user.id
        #     resource.destroy
        #     flash[:errors] = ["Your resource has been removed."]
        #     redirect_to events_url
        #   else
        #     flash[:errors] = ["You can only remove an resource you created."]
        #     redirect_to events_url
        render json: @resource
    end

    private

    def resource_params
        params.require(:resource).permit!
    end

    def find_resource
        @resource = Resource.find(params[:id])
    end


end

