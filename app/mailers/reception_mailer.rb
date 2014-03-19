class ReceptionMailer < ActionMailer::Base

  default :from => "mossaburovo@gmail.com"

  def reception_mail(message)
    @message = message
    mail(:to => 'frossiacsb@gmail.com', :subject => "Обращение с сайта MOS-SABUROVO.RU")
  end

end
