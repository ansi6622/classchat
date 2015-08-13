class MessagesController < ApplicationController


  def index
   render json: Message.all
  end

  def create
    Message.create(message_params)
    render json: {message: "message succesfully added!"}
  end


private

  def message_params
    params.require(:message).permit(
      :name,
      :content
    )
  end

end
