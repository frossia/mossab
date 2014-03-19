class PageAttach < ActiveRecord::Base

  belongs_to :page

  mount_uploader :url, PageAttachUploader

  attr_accessible :url, :title, :page_id, :remove_url, :url_cache

end
