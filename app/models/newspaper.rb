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

  def self.get_papers_of_year(year)
    p = Newspaper.where("strftime('%Y', created_at) = ?", year)
    p
  end

  def self.get_unic_years
    p = []
    Newspaper.all.each do |paper|
      p << paper.created_at.year
    end
    p.uniq
  end

end
