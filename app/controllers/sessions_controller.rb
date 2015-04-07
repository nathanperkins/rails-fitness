class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by username: params[:username]
    if user and user.authenticate params[:password]
      flash[:notice] = 'You logged in.'
      session[:user_id] = user.id
      redirect_to :root
    else
      flash[:alert] = 'There was a problem with the login.'
      render :new
    end
  end

  def destroy
    flash[:notice] = 'You logged out.'
    session[:user_id] = nil
    redirect_to :root
  end
end