class CreatePageAttaches < ActiveRecord::Migration
  def change
    create_table :page_attaches do |t|

      t.string :url
      t.string :title
      t.references :page

      t.timestamps
    end
  end
end
