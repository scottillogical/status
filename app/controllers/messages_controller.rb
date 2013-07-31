class MessagesController < ApplicationController
  # POST /messages
  # POST /messages.json
  def create
    @message = Message.new(params[:message])

    respond_to do |format|
      if @message.save
        format.html do 
          render :text => "succcess" 
        end
        format.json { render json: @message, status: :created, location: @message }
      else
        format.html do 
          render :text => "error" 
        end
      end
    end
  end
end
