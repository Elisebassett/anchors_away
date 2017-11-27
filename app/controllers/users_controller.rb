class UsersController < ApplicationController
  def show
	  @boats = current_user.boats
	  @jobs = current_user.jobs
	  @new_booking = Booking.new
  end

  def index
  	redirect_to new_user_registration_path
  end
end
