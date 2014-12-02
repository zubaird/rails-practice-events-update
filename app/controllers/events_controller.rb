class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    event_params = params.require(:event).permit(
      :description,
      :date,
      :capacity,
      :requires_id,
      :directions,
    )
    @event = Event.new(event_params)
    @event.save
    redirect_to events_path
  end

end
