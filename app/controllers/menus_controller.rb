class MenusController < ApplicationController
  def new
    @user = current_user
    @users = User.all
    @recipes = Recipe.all
    @menu = Menu.new
  end

  def create
  binding.pry
  @menu = Menu.create(menu_params)
   if @menu.save
     redirect_to menu_path(@menu)
   else
     redirect_to new_menu_path
   end
  end

  private

  def menu_params
    params.require(:menu).permit(:recipe_id, :user_id)
  end


end
