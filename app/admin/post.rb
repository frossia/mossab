ActiveAdmin.register Post do


  permit_params :title, :published, :introtext, :fulltext, :created_at, :tags, :tag_ids

  index do
    column :id
    column :title
    column "Tags" do |post|
      post.tags.map { |p| p.name }.join(' ')
    end
    column :published

    default_actions
  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :title
      f.input :tags
      f.input :created_at
      f.input :introtext, :as => :ckeditor
      f.input :fulltext, :as => :ckeditor
    end
    f.actions
  end
  
end
