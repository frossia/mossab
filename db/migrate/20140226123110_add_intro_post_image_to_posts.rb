class AddIntroPostImageToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :intro_post_image, :string
  end
end
