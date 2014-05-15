class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|
      t.string :name
      t.string :address
      t.string :tel
      t.string :email
      t.string :site

      t.integer :institution_category_id

      t.timestamps
    end
  end
end
