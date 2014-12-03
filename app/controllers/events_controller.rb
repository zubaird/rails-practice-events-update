class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.save
    redirect_to events_path
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to events_path
    else
      render :edit
    end
  end

def destroy
  @event = Event.find(params[:id])
  if @event.destroy
    redirect_to events_path
  end
end

private

def event_params
  params.require(:event).permit(
  :description,
  :date,
  :capacity,
  :requires_id,
  :directions,
  )
end

end
