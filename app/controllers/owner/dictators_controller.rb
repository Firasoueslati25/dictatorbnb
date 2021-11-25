class Owner::DictatorsController < ApplicationController
  def index
   @user = current_user
   @dictators = @user.dictators
  end
end
