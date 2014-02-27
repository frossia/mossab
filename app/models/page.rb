class Page < ActiveRecord::Base

  has_and_belongs_to_many :categories

  attr_accessible :title, :published, :introtext, :fulltext, :category_ids, :page_attaches

end
