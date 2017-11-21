class UsersController < ApplicationController
  def show
  @boats = current_user.boats
  @jobs = current_user.jobs
  end

  def index
  end
end
