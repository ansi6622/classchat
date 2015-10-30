class MessagesController < ApplicationController


  def index
   render json: Message.all
  end

  def create
    begin
      Message.create(message_params)
      render json: {message: "message succesfully added!"}
    rescue
      render json: {error: 'Invalid data'}
    end
  end


private

  def message_params
    params.require(:message).permit(
      :name,
      :content
    )
  end

end
