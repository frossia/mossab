class PageAttach < ActiveRecord::Base

  attr_accessible :page_id, :title, :file

  belongs_to :page, :polymorphic => true

  mount_uploader :attach, AttachUploader

end
