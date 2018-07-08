class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    @user = current_user
  end

  def new
    @recipe = Recipe.new
    @user = current_user
  end

  def create
    @recipe = Recipe.create(recipe_params)
   if @recipe.save
     redirect_to recipe_path(@recipe)
   else
     redirect_to new_recipe_path
   end
  end

  def show
    @user = current_user
    @recipe = Recipe.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :calories, :carbs, :protein, :fat)
  end

end
