ActiveAdmin.register Newspaper do

  config.sort_order = "created_at_desc"

  actions :all, :except => [:show]

  permit_params :title, :attachment, :created_at

  form do |f|
    f.inputs do
      f.input :title
      f.input :attachment, :as => :file
      f.input :created_at, :as => :date_picker
    end
    f.actions
  end
  
end
