class Reception < ActiveRecord::Base

  attr_accessible :fio, :email, :phone, :theme, :message

  validates :fio, :email, :theme, :message, presence: true

  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

end
