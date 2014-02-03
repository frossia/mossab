class PageAttach < ActiveRecord::Base

  attr_accessible :page_id, :title, :file

  belongs_to :page

  mount_uploader :page_attach, PageAttachUploader

end
