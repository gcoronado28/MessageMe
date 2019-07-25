class ChatroomController < ApplicationController
  def index
    @messages = Message.includes(:user)
  end
end
