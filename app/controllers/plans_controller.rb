class PlansController < ApplicationController
  def new
  	@plan = Plan.new
  end

  def create
  	@plan = Plan.new(plan_params)
  	if @plan.save
  		redirect_to plans_path
  	else
  		render 'new'
  	end
  end

  def index
  	@plans=Plan.all
  end

  private
  def plan_params
  	params.require(:plan).permit(:trip, :event_name)
  end
end
