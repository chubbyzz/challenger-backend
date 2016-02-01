class Api::V1::ChallengersController < ApplicationController
  def index
   @challengers = Challenger.all
    # render 'api/v1/challengers/index.json'
  end

  def create
    @challenger = Challenger.new params[:challenger]
    @challenger.save!
  end

  def show
    @challenger = Challenger.find_by_slug(params[:slug])
  end
end
