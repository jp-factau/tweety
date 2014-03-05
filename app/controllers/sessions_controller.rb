class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_username(params[:login][:username])
    if user && user.authenticate(params[:login][:password])
      reset_session
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      flash[:alert] = "Usuário ou senha incorretos"
      redirect_to :root
    end
  end
  
  def destroy
    reset_session
    redirect_to :root
  end
  
end