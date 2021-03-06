class PostImage < ActiveRecord::Base

  belongs_to :post

  mount_uploader :image_url, PostImageUploader

  attr_accessible :image_url, :title, :text, :post_id, :remove_image_url, :image_url_cache

end
