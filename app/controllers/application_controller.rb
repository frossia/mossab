class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_locale, :youtube_it

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def youtube_it
    @client = YouTubeIt::Client.new(:dev_key => "AI39si7lNmKdT7qsELclik0eJdJHtgXLKGRmA2N6x0n_nMkwPkX8hcWxjvqzUW35i3q9kBCv7efywme3SsetRDmL-y-IF6L5yg")
    @client = @client.videos_by(:user => '5u5zCbVB6s8yF-_2PmpOYw')
  end

end
