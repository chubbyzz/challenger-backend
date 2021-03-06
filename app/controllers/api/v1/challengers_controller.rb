class Api::V1::ChallengersController < Api::V1::ApplicationController

  def index
   @challengers = Challenger.order created_at: :desc
    # render 'api/v1/challengers/index.json'
  end

  def create
    @challenger = Challenger.new challenger_params
    @status = 500
    if ! @success = @challenger.save
      @status = 400
      render status: @status;
    end
  end

  def show
    # @challenger = Challenger.find_by_slug(params.require(:slug))
    @challenger = Challenger.first
  end

  def challenger_params
    params.require(:challenger).permit(:title, :description, :duration)
  end
end
