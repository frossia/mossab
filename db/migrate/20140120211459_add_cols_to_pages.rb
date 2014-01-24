class AddColsToPages < ActiveRecord::Migration
  def change
    add_column :pages, :introtext, :text
    add_column :pages, :fulltext, :text
  end
end
