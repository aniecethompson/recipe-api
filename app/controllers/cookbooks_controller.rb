class CookbooksController < ApplicationController
    def index
        cookbooks = Cookbook.all
        render json: cookbooks
    end

    def show
        cookbook = Cookbook.find(params[:id])
        render json: cookbook
    end

    def new
        cookbook = Cookbook.new
        render json: cookbook
    end

    def create
        cookbook = Cookbook.create(c_params)
        render json: cookbook
    end

    def update
        cookbook = Cookbook.update(c_params)
        render json: cookbook
    end
    
    def edit
        cookbook = Cookbook.find(params[:id])
        render json: cookbook
    end

    # def destroy
    #     cookbook = Cookbook.find(params[:id])
    #     cookbook.destroy
    #     render json: cookbook
    # end

    private
    def c_params
        params.permit(:user_id)
    end 
end
