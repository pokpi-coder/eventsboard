class EventsController < ApplicationController
def new
	@event = Event.new

def create 
	@event = Event.new(event_params)
if @event.save
	flash[:notice] = "Berjaya"
	redirect_to @event
else 
	flash.now[:alert] = "Gagal"
	render "new"
 end
end

private 
   def event_params 
   	params.require(:event).permit(:title, :description, :start_date, :end_date, :venue, :location)