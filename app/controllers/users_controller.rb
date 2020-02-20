class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def new
        user = User.new
        render json: user
    end

    def create
        user = User.create(u_params)
        render json: user
    end

    def update
        user = User.update(u_params)
        render json: user
    end
    
    def edit
        user = User.find(params[:id])
        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: users
    end

    private
    def u_params
        params.permit(:username, :email)
    end 
end
