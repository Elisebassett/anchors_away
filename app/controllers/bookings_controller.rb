class BookingsController < ApplicationController

  def create
  	respond_to do |format|
	  	@booking = Booking.create(bookings_params)
	  	job = Job.find(@booking.job.id)
      job_requirement = @booking.job.containers
      total_containers = 0
      @booking.job.boats.each do |boat|
        count = boat.containers
        total_containers = count + total_containers
        if total_containers >= job_requirement
          job.update(open: false)
        end
      end
      format.js
  	end

  end

  def destroy
  	respond_to do |format|
      @booking = Booking.find(params[:id]).destroy
      job = Job.find(@booking.job.id)
      job_requirement = @booking.job.containers
      total_containers = 0
      @booking.job.boats.each do |boat|
        count = boat.containers
        total_containers = count + total_containers
        if total_containers <= job_requirement
          job.update(open: true)
        end
      end
      format.js # destroy.js.erb
    end

  end

  private

  def bookings_params
  	params.require(:booking).permit(:boat_id, :job_id)
  end

end



