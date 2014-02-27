ActiveAdmin.register Post do


  #permit_params :title, :published, :introtext, :fulltext, :created_at, :tags, :tag_ids

  scope :all, :default => true
  scope :hot do |tasks|
    tasks.where('hot = ?', true)
  end
  scope :published do |tasks|
    tasks.where('published = ?', true)
  end
  scope :unpublished do |tasks|
    tasks.where('published = ?', false)
  end
  scope :out_of_date do |tasks|
    tasks.where('end_date < ?', Date.today)
  end
  scope :upcoming do |tasks|
    tasks.where('end_date > ?', Date.today)
  end

  index do
    selectable_column

    column :id
    column :title
    column :tags do |post|
      post.tags.map { |p| status_tag(p.name, :warn) }.join(' ')
    end
    column :published do |story|
      story.published? ? status_tag( "ДА", :ok ) : status_tag( "НЕТ" )
    end
    column :hot do |story|
      story.hot? ? status_tag( "ДА", :ok ) : status_tag( "НЕТ" )
    end


    default_actions
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "Admin Details" do
      f.input :title
      f.has_many :post_images do |img|
        img.input :title
        img.input :image_url, :as => :file
        #, :hint => f.template.image_tag(f.object.image.url, :height => '100px')
      end
      f.input :intro_post_image, :as => :file, :hint => f.template.image_tag(f.object.intro_post_image.url, :height => '100px')
      f.input :tags, :as => :check_boxes
      f.input :published, :as => :boolean
      f.input :hot
      f.input :end_date, :as => :date_picker, :hint => "Created automatically if left blank"
      f.input :created_at, :as => :date_picker
      f.input :introtext, :as => :ckeditor
      f.input :fulltext, :as => :ckeditor
    end
    f.actions
  end
  
end
