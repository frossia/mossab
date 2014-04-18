SimpleCaptcha.setup do |captcha_config|
  captcha_config.tmp_path = Rails.root + 'tmp'
  captcha_config.image_size = '150x50'
  captcha_config.image_style = 'simply_red'
end