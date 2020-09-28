class Api::V1::UsersController < ApplicationController
    # skip_before_action :authorized, only: [:new, :create]

    skip_before_action :authorized

    def index
        @users = User.all
        render json: current_user
    end

    def all_users
        @users = User.all
        render json: @users
    end

    def show
        user = User.find(params[:id])
        render json: user
      end

      
      def create
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token(user_id: @user.id)
            render json: { user: UserSerializer.new(@user), jwt: @token}, status: :created
        else 
            render json: { error: 'failed to create user'}, status: :not_acceptable
        end
    end

    def profile
        # byebug
        render json: {user: UserSerializer.new(current_user) }, status: :accepted
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
        params.require(:user).permit(:first_name,
                                     :last_name,
                                     :username,
                                     :password,
                                     :email, 
                                     :image, 
                                     :city,
                                     :state)
    end
end
