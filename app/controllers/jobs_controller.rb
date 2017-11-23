class JobsController < ApplicationController
  def index
  end

  def show
    @jobs = Job.all
    @new_booking = Booking.new
  end

  def new
    @job = Job.new
  end

  def create
    @job = current_user.jobs.new(job_params)
    if @job.save
      redirect_to current_user
    else
      render :new
    end
  end

  def update
    @job = Job.find(params[:id])
    respond_to do |format|
      @job.update(job_params)
      format.js
    end
  end

  def destroy
    respond_to do |format|
      Job.find(params[:id]).destroy
      format.js # destroy.js.erb
    end
  end

  private

  def job_params
    params.require(:job).permit(:title, :description, :containers, :origin, :destination, :cost, :open)
  end
end
