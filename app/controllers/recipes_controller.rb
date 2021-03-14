class RecipesController < ApplicationController
  def index
    render locals: {recipes: Recipe.all}
  end

  def show
    render locals: {recipe: Recipe.find(params[:id])}
  end

  def new
    render locals: {recipe: Recipe.new}
  end

  def create
    recipe = Recipe.new(recipe_params)

    if recipe.save
      redirect_to recipes_path
    else
      render :new, locals: {recipe: recipe}
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :ingredients, :instructions)
  end
end