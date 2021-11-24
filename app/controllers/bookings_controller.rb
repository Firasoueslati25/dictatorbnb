class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def new
    # we need @dictator in our `simple_form_for`
    @dictator = Dictator.find(params[:dictator_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @dictator = Dictator.find(params[:dictator_id])
    @booking.dictator = @dictator
    @booking.save
    redirect_to dictator_path(@dictator)
  end

  private

  def review_params
    params.require(:review).permit(:start_date)
  end

end
#  dictator_bookings POST   /dictators/:dictator_id/bookings(.:format) bookings#create
