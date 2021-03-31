class ApplicationController < ActionController::API
    # def current_user
    #     token = request.headers['auth_key']
    #     payload = JWT.decode(token, 'key', true, { algorithm: 'H256' })
    #     user_id = payload[0]['user_id']
    #     user = User.find_by(id: user_id)
    # end
end
