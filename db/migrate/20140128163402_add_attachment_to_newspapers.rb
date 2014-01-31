class AddAttachmentToNewspapers < ActiveRecord::Migration
  def change
    add_column :newspapers, :attachment, :string
  end
end
