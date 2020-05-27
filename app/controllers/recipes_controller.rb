class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new()
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      flash[:success] = "Recipe baked!"
    end
    
    redirect_to root_url
  end

  private

  def recipe_params
    params.permit(:name)
  end
end