class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(params[:login], params[:password])
    if user
      session[:user_id] = user.id
      flash[:notice] = "Logged In Successfully."
      redirect_to_target_or_default(root_url)
    else
      flash.now[:error] = "Invalid Login Or Password."
      render :action => 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You Have Been Logged Out."
    redirect_to root_url
  end
end
