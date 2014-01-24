class Category < ActiveRecord::Base

  attr_accessible :name, :icon

  has_and_belongs_to_many :pages

end
