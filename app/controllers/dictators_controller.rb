class DictatorsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @dictators = Dictator.all
  end

  # def create
  #   @dictator = Dictator.new(dictator_params)
  #   @dictator.save

  #   redirect_to dictator_path(@dictator)
  # end

  # private

  # def dictator_params
  #   params.require(:dictator).permit(:name, :description, :price_per_day)
  # end
end
