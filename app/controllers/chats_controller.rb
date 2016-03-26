class ChatsController < ApplicationController

  def index
    @chats = Chat.all
  end

  def show
    @chat = Chat.find_by(id: params[:id])
    @messages = @chat.messages
  end

  def new
    @chat = Chat.new
  end

  def create
    @chat = Chat.create(chat_params)
    redirect_to chats_path
  end

private
  def chat_params
    params.require(:chat).permit(:title)
  end
end