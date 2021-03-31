class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def create 
        user = User.new(user_params)
        if user.valid?
            user.save
            render json: {user: UserSerializer.new(user)}, msg: 'Success'
        else
            render json: {msg: 'Failed'}
        end
    end

    def show 
        user = User.find_by(id: params[:id])
        render json: user
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :city, :password)
    end
end
