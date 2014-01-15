class CreateCategoriesPages < ActiveRecord::Migration
  def change
    create_table :categories_pages do |t|
      t.integer :categories_id
      t.integer :pages_id
    end
  end
end
