class AddItemImageToItems < ActiveRecord::Migration
  def change
    add_attachment :items, :item_image
  end
end
