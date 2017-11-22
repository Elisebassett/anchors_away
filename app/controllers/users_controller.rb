class UsersController < ApplicationController
  def show
	  @boats = current_user.boats
	  @jobs = current_user.jobs
	  @new_booking = Booking.new
  end

  def index
  end
end
