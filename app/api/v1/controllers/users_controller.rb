class UsersController < ApplicationController
    #add before_action's for authorization 
    
    def create 
        @user = User.create(user_params)
        render json: @user
    end 
    
    def show 
        @user = User.find_by_id(params[:id])
        render json: @user
    end 

    private 

    def user_params
        params.require(:user).permit(:username, :first_name, :last_name, :password)
    end
end
