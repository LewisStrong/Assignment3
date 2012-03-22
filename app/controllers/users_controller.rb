class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Thank You For Signing Up! You Are Now Logged In."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end
end
