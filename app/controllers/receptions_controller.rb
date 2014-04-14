class ReceptionsController < ApplicationController

  def new
    @message = Reception.new
  end

  def create
    @message = Reception.new(params[:message])
    if @message.save
      ReceptionMailer.reception_mail(@message).deliver
      render 'thanks'
    else
      render 'new'
    end
  end

end
