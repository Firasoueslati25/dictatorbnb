class BookingsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]

  def new
    # we need @dictator in our `simple_form_for`
    @dictator = Dictator.find(params[:dictator_id])
    @booking = Booking.new
  end
end
#  dictator_bookings POST   /dictators/:dictator_id/bookings(.:format) bookings#create
