ActiveAdmin.register Page do

  config.sort_order = "created_at_desc"

  actions :all, :except => [:show]


  index do
    column :id
    column(:title) { |i| best_in_place i, :title, :type => :input, :path => [:admin, i] }
    column(:published) { |i| best_in_place i, :published, :type => :checkbox, :path => [:admin, i] }

    default_actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :published
      f.has_many :page_attaches do |attach|
        attach.input :title
        attach.input :url, :as => :file, :hint => f.template.link_to(attach.object.url)
        attach.input :_destroy, :as => :boolean
      end
      f.input :categories, :as => :select, :input_html => { :multiple => true , :style => 'height: 200px'}
      f.input :introtext, :as => :ckeditor
      f.input :fulltext, :as => :ckeditor, :input_html => { :style => 'height: 500px'}
    end
    f.actions
  end
  
end
