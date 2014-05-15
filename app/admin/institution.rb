ActiveAdmin.register Institution do

  # config.sort_order = "created_at_desc"

  actions :all, :except => [:show]

  # scope :all, :default => true
  #scope :published do |tasks|
  #  tasks.where('published = ?', true)
  #end
  # scope :unpublished do |tasks|
  #   tasks.where('published = ?', false)
  # end
  # scope :hot do |tasks|
  #   tasks.where('hot = ?', true)
  # end
  # scope :out_of_date do |tasks|
  #   tasks.where('end_date < ?', Date.today)
  # end
  # scope :upcoming do |tasks|
  #   tasks.where('end_date > ?', Date.today)
  # end

  # index do
  #   selectable_column
  #
  #   column :id
  #   column :created_at
  #   column :title
  #   column :tags do |post|
  #     post.tags.map { |p| status_tag(p.name, :warn) }.join(' ')
  #   end
  #   column :published do |story|
  #     story.published? ? status_tag( "ДА", :ok ) : status_tag( "НЕТ" )
  #   end
  #   column :hot do |story|
  #     story.hot? ? status_tag( "ДА", :ok ) : status_tag( "НЕТ" )
  #   end
  #
  #
  #   default_actions
  # end

  form do |f|
    #panel 'UUU' do
    #  table_for(post.post_images) do
    #    column :image_url
    #  end
    #end
    f.inputs "Информация об уреждении" do
      f.input :name
      f.input :address
      f.input :tel
      f.input :site
      f.input :email
      f.input :institution_category, :as => :select, :input_html => {:style => 'height: 200px'}
      # f.input :post_images_attributes, as: :file, input_html: { multiple: true, :name => 'post[post_images_attributes][][image_url]'}
      #f.input :_destroy, as: :boolean
      #f.has_many :post_images do |img|
      #  img.input :image_url, :as => :file, :hint => f.template.image_tag(img.object.image_url, :style => 'max-height: 100px')
      #  img.input :_destroy, :as => :boolean
      #end

      # f.input :intro_post_image, :as => :file, :hint => f.template.image_tag(f.object.intro_post_image.url, :style => 'max-height: 100px')
      # f.input :remove_intro_post_image, as: :boolean
      # f.input :tags, :as => :check_boxes
      # f.input :published, :as => :boolean
      # f.input :hot
      # f.input :end_date, :as => :date_picker, :hint => "Автоматически снять запись с публикации в указанную дату"
      # f.input :created_at, :as => :date_picker
      # f.input :introtext, :as => :ckeditor
      # f.input :fulltext, :as => :ckeditor
    end
    f.actions
  end
  
end
