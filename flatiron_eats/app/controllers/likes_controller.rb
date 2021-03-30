class LikesController < ApplicationController
    def create
        like = Like.new(like_params)
        like.save
        render json: like
    end

    def destroy
        like = Like.find_by(id: params[:id])
        like.destroy
        render json: like
    end

    private

    def like_params
        params.require(:like).permit(:restaurant_id, :user_id)
    end
end
