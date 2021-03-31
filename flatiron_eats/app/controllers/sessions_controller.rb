class SessionsController < ApplicationController

    def create
        user = User.find_by(email: session_params[:email])
        if user && user.authenticate(session_params[:password])
            payload = { user_id: user.id }
            token = JWT.encode(payload, 'key', 'HS256')
            render json: { user: UserSerializer.new(user), token: token }
        else
            render json: { msg: 'Email or Password are incorrect. Please try again.' }
        end
    end

    private
    def session_params
        params.require(:user).permit(:email, :password)
    end
end
