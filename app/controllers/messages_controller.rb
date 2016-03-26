class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.create!(message_params)
    @chat = @message.chat

    respond_to do |format|
      format.js.erb
    end
  end

private
  def message_params
    params.require(:message).permit(:content, :chat_id)
  end
end