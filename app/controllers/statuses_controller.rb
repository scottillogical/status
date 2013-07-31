class StatusesController < ApplicationController

  def current
    @current_status = CurrentStatus.order_by(:created_at, :desc).last
    @messages = Message.order_by(:created_at, :desc).limit(10)
  end

  def create
    @status = CurrentStatus.new(params[:status])

    respond_to do |format|
      if @status.save
        format.html do
          render :text => "success"
        end
        format.json { render json: @status, status: :created, location: @status }
      else
        format.html do
          render :text => "error"
        end
      end
    end
  end
end
