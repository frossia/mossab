class Page < ActiveRecord::Base

  has_and_belongs_to_many :categories


  attr_accessible :title, :published, :introtext, :fulltext, :category_ids, :page_attaches, :page_attaches_attributes

  has_many :page_attaches, :dependent => :destroy
  accepts_nested_attributes_for :page_attaches, :allow_destroy => true

end
