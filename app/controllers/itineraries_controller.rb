class ItinerariesController < ApplicationController
  def new
  	@itinerary = Itinerary.new
  end

  def create
  	@itinerary = Itinerary.new(itinerary_params)
  	if @itinerary.save
  		redirect_to itineraries_path
  	else
  		render 'new'
  	end
  end

  def index
  	@itineraries=Itinerary.all
  end

  private
  def itinerary_params
  	params.require(:itinerary).permit(:name, :location)
  end
end
