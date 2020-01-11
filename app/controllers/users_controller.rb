class UsersController < ApplicationController

    def login
        user = User.find_by(user_params)
        if user
            render json: user
        else
            render json: {error: "No user found", details: "No email matching"}
        end
    end

    def create
        user = User.new(user_params)
        if user.save
            render json: user
        else
            render json: {error: "No User created", details: ""}
        end
    end

    def show 
        user = User.find(params[:id])
        if user
            render json: user
        end
    end

    private
    def user_params
        params.require(:user).permit(:name, :email)
    end
end
