class MenuController < ApplicationController
  def new
    @user = current_user
  end

  def create
  end

end