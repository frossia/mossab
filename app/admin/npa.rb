ActiveAdmin.register Npa do

  config.sort_order = "created_at_desc"

  actions :all, :except => [:show]

  permit_params :npa_attach, :description, :created_at

  form do |f|
    f.inputs do
      f.input :npa_attach, :as => :file
      f.input :description, :as => :ckeditor
      f.input :created_at, :as => :date_picker
    end
    f.actions
  end
  
end
