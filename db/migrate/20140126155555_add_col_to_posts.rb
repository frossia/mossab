class AddColToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :title, :string
    add_column :posts, :introtext, :text
    add_column :posts, :fulltext, :text
    add_column :posts, :hot, :boolean
    add_column :posts, :published, :boolean
    add_column :posts, :end_date, :date
  end
end


