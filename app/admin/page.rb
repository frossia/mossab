ActiveAdmin.register Page do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  #permit_params :title, :published, :introtext, :fulltext
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end


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
