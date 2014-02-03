class Category < ActiveRecord::Base

  attr_accessible :name, :icon, :page_ids

  has_and_belongs_to_many :pages

end
