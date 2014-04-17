class EventsController < ApplicationController

  def create
    @event = Event.new(event_params)

    @event.save
  end

  private
    def event_params
      params.requier(:event).permit(:name, :value_1, :value_2)

end
