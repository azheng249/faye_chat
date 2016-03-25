class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.create(content: params[:content], chat_id: params[:chat_id])
    redirect_to chat_path(@message.chat)
  end
end