class ContatoController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])

    if @message.valid?
      NotificacoesMailer.new_message(@message).deliver
      redirect_to(root_path, :notice => "Mensagem correctamente enviada!")
    else
      flash.now.alert = "Por favor, preencha todos os campos."
      render :new
    end
  end
end
