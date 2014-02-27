class Post < ActiveRecord::Base

  attr_accessible :title, :introtext, :fulltext, :hot, :published, :end_date, :created_at, :updated_at, :tag_ids, :intro_post_image, :post_images, :post_images_attributes

  has_and_belongs_to_many :tags

  has_many :post_images

  accepts_nested_attributes_for :tags
  accepts_nested_attributes_for :post_images, :allow_destroy => true

  mount_uploader :intro_post_image, IntroPostImageUploader

  #scope :without_children, includes(:children).where(:children => { :id => nil })
  scope :videos, includes(:tags).where(:tags => { :name => 'Собрание' })

end
