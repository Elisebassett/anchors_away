class BookingsController < ApplicationController
  def create
  	Booking.create(bookings_params)
  end

  def update

  end

  def destroy

  end

  private

  def bookings_params
  	params.require(:booking).permit(:boat_id, :job_id)
  end

end



