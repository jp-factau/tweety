class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Cadastro efetuádo com sucesso"
      redirect_to :root
    else
      flash[:alert] = "Falha ao realizar cadastro"
      render :new
    end
  end
  
  def show
    @user = User.find(params[:id])
  end

  protected

  def user_params
    params.require(:user).permit(:name,:username,:password,:password_confirmation)
  end
  
end