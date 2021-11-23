class DictatorsController < ApplicationController
  def index
    @dictators = Dictator.all
  end
end
