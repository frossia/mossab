class CreatePageAttaches < ActiveRecord::Migration
  def change
    create_table :page_attaches do |t|
      t.string :title
      t.string :file

      t.timestamps
    end
  end
end
