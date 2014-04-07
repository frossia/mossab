class Newspaper < ActiveRecord::Base

  mount_uploader :attachment, AttachmentUploader

  attr_accessible :title, :attachment, :created_at

  after_update :cover
  after_create :cover

  #require 'rmagick'
  #include Magick
  def cover
    image=MiniMagick::Image.open(self.attachment.path)
    image.format("png", 0)
    image.resize("x400")

    dir = "public/uploads/newspaper/attachment/#{self.id}"
    Dir.mkdir(dir) unless File.exists?(dir)

    image.write(dir + "/thumbnail.png")
  end

end
