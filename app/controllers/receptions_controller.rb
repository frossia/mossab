class ReceptionsController < ApplicationController

  def new
    @message = Reception.new
  end

  def create
    @message = Reception.new(params[:message])
    if @message.save
      render 'thanks'
      ReceptionMailer.reception_mail(@message).deliver
    else
      render 'new'
    end
  end

end
