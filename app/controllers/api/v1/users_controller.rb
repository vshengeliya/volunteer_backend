class Api::V1::UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end

    def show
        user = User.find(params[:id])
        render json: user
      end
    
    def create
    end

    def edit
        user = User.find(params[:id])
        render json: user
      end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end
    
    def destroy
        user = User.find(params[:id])
        user.destroy!
        render json: {}
    end
    
    
    private
    
    def user_params
        params.require(:user).permit(:first_name, :last_name, :image, :city, :state, :email, :password_digest)
    end
end
