class AddHeaderImageTitleToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :header_image_title, :string
  end
end
