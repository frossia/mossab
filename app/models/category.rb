class Category < ActiveRecord::Base

  attr_accessible :id, :name, :icon, :published, :page_ids

  has_and_belongs_to_many :pages

  scope :published_cats, -> { where(published: true) }

end
