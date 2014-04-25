#encoding: utf-8

class PagesController < ApplicationController

  skip_before_filter :verify_authenticity_token, :only => [:mail_deputaty]

  layout 'fullpage', :only => :backup

  before_filter :authenticate_admin_user!, :only => :backup

  include SimpleCaptcha::ControllerHelpers

	def index

  end

  def show
    @page = Page.find(params[:id])
  end

  def deputaty
    @page = Page.find_by_id(16)
  end

  def mail_deputaty
    # @message = []
    @page = Page.find_by_id(16)
    @category = params[:email_category]
    @email = params[:user_email]
    @message = params[:message]
    if simple_captcha_valid?
      DeputatMailer.deputat_mail(@category, @email, @message).deliver
      # render 'thanks'
      redirect_to '/pages/deputaty', :flash => { :notice => "Сообщение отправлено!" }
    else
      redirect_to '/pages/deputaty', :flash => { :error => "Проверьте правильность заполнения полей!" }
    end
  end

  def npa
    @npas = Npa.all.order(:created_at).reverse_order
    @page = Page.find_by_id(16)
  end

  def backup

  end

  def do_backup
    # system("mkdir ALERT")
    # path = 'public/uploads'
    #
    # path << '/' unless path.end_with?('/')
    #
    # raise RuntimeError, "#{path} is not a directory" unless File.directory?(path)
    #
    # @total_size = 0
    # @files_count = 0
    # Dir["#{path}**/*"].each do |f|
    #   @total_size += File.size(f) if File.file?(f) && File.size?(f)
    #   @files_count = @files_count + 1
    # end
    # @total_size = @total_size / 2**20
    # respond_to do |format|
    #   format.js { render :json => @var }
    # end
  end


end
