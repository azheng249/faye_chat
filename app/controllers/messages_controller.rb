class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.create(content: params[:content], chat_id: params[:chat_id])
    # PrivatePub.publish_to(params[:chat_url])
  end
end