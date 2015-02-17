class ItinerariesController < ApplicationController
  def new
  	@itinerary = itinerary.new
  end

  def create
  	@itinerary = itinerary.new(itinerary_params)
  	if @itinerary.save
  		redirect_to itinerarys_path
  	else
  		render 'new'
  	end
  end

  def index
  	@itineraries=itinerary.all
  end

  private
  def itinerary_params
  	params.require(:itinerary).permit(:name, :location)
  end
end
