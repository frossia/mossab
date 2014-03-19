ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => 587,
    :domain => "frossiacsb.no-ip.biz:3000",
    :user_name => "mossaburovo@gmail.com",
    :password => "1234qwer1234",
    :authentication => "plain",
    :enable_starttls_auto => true
}