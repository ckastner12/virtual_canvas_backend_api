class UsersController < ApplicationController

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
