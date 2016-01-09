class SessionsController < ApplicationController

  def new
  end

  def create
    login = Login.find_by(email: params[:email])
    if login && login.authenticate(params[:password])
      flash[:notice] = 'Welcome to Communicare!'
      session[:login_id] = login.id
      redirect_to root_path
    else
      flash.now[:warning] = 'Login failed. Please Try Again.'
      render :new
    end
  end

  def destroy
    session.clear
    flash[:notice] = 'Thanks For Visiting Communicare! Please Return Soon!'
    redirect_to root_path
  end
end


