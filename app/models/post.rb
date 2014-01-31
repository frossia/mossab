class Post < ActiveRecord::Base

  has_and_belongs_to_many :tags

  attr_accessible :title, :introtext, :fulltext, :hot, :published, :end_date, :created_at, :tags, :tag_ids

  #scope :without_children, includes(:children).where(:children => { :id => nil })
  scope :videos, includes(:tags).where(:tags => { :name => 'Собрание' })

end
