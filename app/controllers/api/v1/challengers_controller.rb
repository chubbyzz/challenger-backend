class Api::V1::ChallengersController < ApplicationController

  def index
   @challengers = Challenger.all
    # render 'api/v1/challengers/index.json'
  end

  def create
    @challenger = Challenger.new challenger_params
    @challenger.save!
  end

  def show
    # @challenger = Challenger.find_by_slug(params.require(:slug))
    @challenger = Challenger.first
  end

  def challenger_params
    params.require(:challenger).permit(:title, :description, :duration)
  end
end
