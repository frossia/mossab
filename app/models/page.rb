class Page < ActiveRecord::Base

  has_and_belongs_to_many :categories
  has_many :page_attaches

  attr_accessible :title, :published, :introtext, :fulltext, :category_ids

end
