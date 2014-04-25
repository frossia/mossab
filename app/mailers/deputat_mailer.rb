class DeputatMailer < ActionMailer::Base

  default :from => "mossaburovo@gmail.com"

  def deputat_mail(category, email, message)
    @message = message
    @email = email

    case category
      when 1
        @recipients = 'Andrianov@mos-saburovo.ru, Kudinova@mos-saburovo.ru'
      when 2
        @recipients = 'Zausaeva@mos-saburovo.ru, Timohov@mos-saburovo.ru'
      when 3
        @recipients = 'Averin@mos-saburovo.ru, Varakina@mos-saburovo.ru'
      when 4
        @recipients = 'Kovaleva@mos-saburovo.ru, Kuimov@mos-saburovo.ru'
      when 5
        @recipients = 'Virin@mos-saburovo.ru, Kuzmin@mos-saburovo.ru'
      else
        @recipients = 'frossiacsb@gmail.com'
    end

    mail(:to => @recipients, :subject => "Обращение с сайта MOS-SABUROVO.RU")
  end
end
