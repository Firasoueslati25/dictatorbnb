class DictatorsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @dictators = Dictator.all
  end
end
