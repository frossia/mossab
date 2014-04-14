class DeputatMailer < ActionMailer::Base

  default :from => "mossaburovo@gmail.com"

  def deputat_mail(message)
    @message = message
    @user_email = @message[1]['user_email'].to_s

    case @message[0]['email_category']
      when 1
        @recipients = 'frossiacsb@gmail.com, frossia@yandex.ru'
      when 5
        @recipients = 'avfrancev@gmail.com'
      else
        @recipients = 'frossiacsb@gmail.com'
    end

    mail(:to => @recipients, :subject => "Обращение с сайта MOS-SABUROVO.RU")
  end
end
