class EventsController < ApplicationController

  skip_before_action :authorized
  
  def index
    @events = Event.all
    render json: @events
  end

  def create
    event = Event.create(event_params)
    render json: event
  end


  def destroy
    event = Event.find(params[:id])
    event.destroy!
    render json: {}
  end


  private

  def event_params
    params.require(:event).permit(:name, :value_proposition, :event_type, :quantity, :image, :details, :date, :city, :state, :user_id)
  end
end
