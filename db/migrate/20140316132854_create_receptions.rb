class CreateReceptions < ActiveRecord::Migration
  def change
    create_table :receptions do |t|
      t.string :fio
      t.string :email
      t.string :phone
      t.string :theme
      t.text   :message

      t.timestamps
    end
  end
end
