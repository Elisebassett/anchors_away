class BookingsController < ApplicationController
  def create
  	respond_to do |format|
	  	Booking.create(bookings_params)
	  	format.js
  	end
  end

  def destroy
  	respond_to do |format|
      Booking.find(params[:id]).destroy
      format.js # destroy.js.erb
    end

  end

  private

  def bookings_params
  	params.require(:booking).permit(:boat_id, :job_id)
  end

end



