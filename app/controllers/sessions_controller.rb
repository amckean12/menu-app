class SessionsController < ApplicationController
  def new
     if current_user
       @user = current_user
       redirect_to user_path(@user)
     else
       @user = User.new
     end
   end

   def create
    @user = User.find_by_email(params[:user][:email])
      if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        redirect_to signin_path
      end
  end

  def destroy
    if current_user
      session.delete :user_id
    end
    redirect_to '/'
  end
end
