class EventsController < ApplicationController

    before_action :find_event, only: [:show, :destroy, :update]

    def index
        @events = Event.all
        render json: @events
    end

    def show
        render json: @event
    end

    def create
        @event = Event.create(event_params)
        #@event.user_id = current_user.id
        # if event.valid?
        #     session[:event_id] = event.id
        #     redirect_to event_path(event)
        # else
        #     flash[:errors] = event.errors.full_messages
        #     redirect_to new_event_path
        # end
        render json: @event
    end

    def new
        @event = Event.new
        render json: @event
    end

    def destroy
        @event.destroy
        render json: @events
    end

    def update
        @event.update(event_params)
        # if event.user_id == current_user.id
        #     event.destroy
        #     flash[:errors] = ["Your event has been removed."]
        #     redirect_to events_url
        #   else
        #     flash[:errors] = ["You can only remove an event you created."]
        #     redirect_to events_url
        render json: @event
    end

    private

    def event_params
        params.require(:event).permit!
    end

    def find_event
        @event = Event.find(params[:id])
    end


end
