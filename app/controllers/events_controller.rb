class EventsController < ApplicationController

  def index
    @events = Event.all

  def create

    #Where is this HTTP request gog to come from?
    #POST request is going to be coming from different domain.
    #HTTP format is going to be JS/JSON, not HTML like we're used to.
    #Other than that things are normal.

    #This needs to create an event from an off-site JS request
    @event = Event.new(event_params)

    @event.save
  end

private

  def event_params
    params.require(:event).permit(:name, :value_1, :value_2)
  end

end
