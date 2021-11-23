class DictatorsController < ApplicationController
  def index
    @Dictators = Dictator.all
  end

  def show
    @Dictator = Dictator.find(params[:id])
    @review = Review.new
  end

  def new
    @dictator = Dictator.new
  end

  def create
    @dictator = Dictator.new(dictator_params)
    if @dictator.save
      redirect_to dictator_path(@dictator)
    else
      render "new"
    end
  end

  private

  def dictator_params
    params.require(:dictator).permit(:name, :address, :description, :price_per_day)
  end
end
