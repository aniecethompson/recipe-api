    class RecipesController < ApplicationController
        def index
            recipes = Recipe.all
            render json: recipes
        end
    
        def show
            recipe = Recipe.find(params[:id])
            render json: recipe
        end
    
        def new
            recipe = Recipe.new
            render json: recipe
        end
    
        def create
            recipe = Recipe.create(r_params)
            render json: recipe
            
        end
    
        def update
            recipe = Recipe.update(r_params)
            render json: recipe
        end
        
        def edit
            recipe = Recipe.find(params[:id])
            render json: recipe
        end
    
        def destroy
            recipe = Recipe.find(params[:id])
            recipe.destroy
            render json: recipe
        end
    
        private
        def r_params
            params.permit(:online_id, :cookbook_id)
        end 
    end

