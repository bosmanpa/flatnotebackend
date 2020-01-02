class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find_or_create_by(username: params[:id])
        render json: user, include: :notes
    end

end
