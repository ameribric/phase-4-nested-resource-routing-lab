class UsersController < ApplicationController

  def show
    user = User.find_by(id: params[:id])
    render json: user, include: :items
  end

  def create
    user = User.find_by(id: params[:id])
    user.create(user_params)
    render json: user
  end

  private

  def user_params
    params.permit(user: params[:user], city: params[:city])
  end

end
