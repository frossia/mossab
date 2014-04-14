#encoding: utf-8

class PagesController < ApplicationController

  skip_before_filter :verify_authenticity_token, :only => [:mail_deputaty]

	def index

  end

  def show
    @page = Page.find(params[:id])
  end

  def deputaty
    @page = Page.find_by_id(16)
  end

  def mail_deputaty
    @message = []
    @message << params[:email_category]
    @message << params[:user_email]
    @message << params[:message]
    DeputatMailer.deputat_mail(@message).deliver
      # render 'thanks'
    redirect_to '/pages/deputaty'
  end

  def npa
    @npas = Npa.all.order(:created_at).reverse_order
    @page = Page.find_by_id(16)
  end


end
