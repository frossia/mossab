ActiveAdmin.register Page do

  config.sort_order = "created_at_desc"

  actions :all, :except => [:show]

  index do
    column :id
    column :title
    column :published

    default_actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :published
      f.input :categories, :as => :select, :input_html => { :multiple => true , :style => 'height: 200px'}
      f.input :introtext, :as => :ckeditor
      f.input :fulltext, :as => :ckeditor, :input_html => { :style => 'height: 500px'}
    end
    f.actions
  end
  
end
