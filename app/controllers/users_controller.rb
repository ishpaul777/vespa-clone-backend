class UsersController < ApplicationController
  def logged_in_user
    render json: current_user
  end
end
