class TripsController < ApplicationController
  def new
  	@trip = Trip.new
  end

  def create
  	@trip = Trip.new(trip_params)
  	if @trip.save
  		redirect_to trips_path
  	else
  		render 'new'
  	end
  end

  def index
  	@trips=Trips.all
  end

  private
  def trip_params
  	params.require(:trip).permit(:name, :location)
  end
end


 