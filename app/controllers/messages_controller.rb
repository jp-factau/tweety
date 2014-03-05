class MessagesController < ApplicationController
  
  def new
    @message = current_user.messages.build
  end

  def create
    message = current_user.messages.build(message_params)
    if message.save
      flash[:notice] = "Mensagem criada"
      redirect_to user_path(current_user)
    else
      flash[:notice] = "Falha ao criar nova mensagem"
      redirect_to :new
    end
  end

  protected

  def message_params
    params.require(:message).permit(:content)
  end
  
end