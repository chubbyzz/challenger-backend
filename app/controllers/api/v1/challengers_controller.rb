class Api::V1::ChallengersController < ApplicationController
  def index
   @challengers = Challenger.all
  end

  def create
    @challenger = Challenger.new params[:challenger]
    @challenger.save!
  end

  def show
    @challenger = Challenger.find_by_slug(params[:slug])
  end
end
