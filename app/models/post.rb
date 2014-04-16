class Post < ActiveRecord::Base

  attr_accessible :title, :introtext, :fulltext, :hot, :published, :end_date, :created_at, :updated_at, :tag_ids, :intro_post_image, :post_images_attributes, :post_images, :remove_intro_post_image

  has_and_belongs_to_many :tags
  accepts_nested_attributes_for :tags

  has_many :post_images, :dependent => :destroy
  accepts_nested_attributes_for :post_images, :allow_destroy => true

  mount_uploader :intro_post_image, IntroPostImageUploader

  #scope :without_children, includes(:children).where(:children => { :id => nil })
  scope :videos, includes(:tags).where(:tags => { :name => 'Собрание' }).order('created_at DESC')
  scope :published_and_not_hot, -> { where(published: true, hot: false) }
  #scope :hot, -> { where(published: true, hot: true, "end_date < ?", Date.today) }
  scope :hot, -> { where("published = ? AND hot = ? AND end_date > ?", true, true, Date.today).order('created_at DESC') }

  scope :with_images, joins(:post_images).
      select('posts.id').
      group('posts.id').
      having('count(post_images) > 1')


  def is_meeting
    @names = ['foo']

    self.tags.each do |tag|
      @names << tag.name
    end

    @names.include?('Собрание')

  end


end
