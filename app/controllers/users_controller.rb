class UsersController < ApplicationController
  def index
    users = User.all
    # users= @users.sort_by{ |obj| obj.id }
    render json: users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
  end
end
