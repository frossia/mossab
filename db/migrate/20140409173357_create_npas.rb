class CreateNpas < ActiveRecord::Migration
  def change
    create_table :npas do |t|

      t.string :npa_attach
      t.text   :description

      t.timestamps
    end
  end
end
