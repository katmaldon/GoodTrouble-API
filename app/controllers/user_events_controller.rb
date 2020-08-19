class UserEventsController < ApplicationController

    before_action :find_user_event, only: [:show, :destroy]

    def index
        # debugger
        @user_events = UserEvent.all
        @events = @user_events.map{ |userevent| Event.find(userevent.event_id)}
        render json: @events
    end

    def show
        @user_event = UserEvent.find(params[:id])
        render json: @user_event
    end

    def create
        # @user_event = UserEvent.new(user_id: user.first.id)
        @user_events = User.first.user_events.create(user_event_params)
        render json: @user_events
    end

    def destroy
        # debugger
        @user_event.destroy
        # debugger
        redirect_to :index
    end

    private

    def user_event_params
        params.require(:user_event).permit(:event_id)
    end

    def find_user_event
        @user_event = UserEvent.find_by(event_id: params[:id])
    end

end

