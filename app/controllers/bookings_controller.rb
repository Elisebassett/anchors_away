class BookingsController < ApplicationController
  
  def create
  	respond_to do |format|
	  	@booking = Booking.create(bookings_params)
	  	toggle_open_field
      format.js
  	end

  end

  def destroy
  	respond_to do |format|
      @booking = Booking.find(params[:id]).destroy
      toggle_open_field
      format.js # destroy.js.erb
    end

  end

  private

  def toggle_open_field
    job = @booking.job
    job_requirement = @booking.job.containers
    total_containers = 0
    @booking.job.boats.each do |boat|
      count = boat.containers
      total_containers += count 
      if total_containers <= job_requirement
        job.update(open: true)
      elsif total_containers >= job_requirement
        job.update(open: false)
      end  
    end
  end

  def bookings_params
  	params.require(:booking).permit(:boat_id, :job_id)
  end

end



