class CreateCategoriesPages < ActiveRecord::Migration
  def change
    create_table :categories_pages do |t|
      t.integer :category_id
      t.integer :page_id
    end
  end
end
