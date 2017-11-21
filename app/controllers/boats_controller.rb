class BoatsController < ApplicationController
  def index

  end

  def show

  end

  def new
    @boat = Boat.new
  end

  def create
    current_user.boats.create(boat_params)
    redirect_to current_user
  end

  def update
    @boat = Boat.find(params[:id])
    respond_to do |format|
      @boat.update(boat_params)
      format.js
    end
  end

  def destroy
  
  end

  private

  def boat_params
    params.require(:boat).permit(:location, :name, :containers)
  end

end
