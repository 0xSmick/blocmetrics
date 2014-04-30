class EventsController < ApplicationController
  respond_to :json, :html, :jpg

  def index

    response.headers["Access-Control-Allow-Origin"] = "*"
    response.headers["Access-Control-Allow-Methods"] = "POST, GET, OPTIONS"
    response.headers["Access-Control-Allow-Headers"] = "Content-Type"
    response.headers["Access-Control-Max-Age"] = "1728000"
    
    @events = Event.all
  end

  def create
    #binding.pry

    response.headers["Access-Control-Allow-Origin"] = "*"
    response.headers["Access-Control-Allow-Methods"] = "POST, GET, OPTIONS"
    response.headers["Access-Control-Allow-Headers"] = "Content-Type"
    response.headers["Access-Control-Max-Age"] = "1728000"

    @web_property = WebProperty.find(params[:web_property_id])

    #Where is this HTTP request gog to come from?
    #POST request is going to be coming from different domain.
    #HTTP format is going to be JS/JSON, not HTML like we're used to.
    #Other than that things are normal.

    #This needs to create an event from an off-site JS request
    @event = Event.new(event_params)

    @event.save
  end

  respond_to do |format|
   format.json { render nothing: true }
  end

private

  def event_params
    params.require(:event).permit(:type, :web_property, :url)
  end

end
