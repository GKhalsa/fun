class Item < ActiveRecord::Base
  has_attached_file :item_image, styles: {
     thumb: '100x100>',
     square: '200x200#',
     medium: '300x300>',
     large: '600x600>'
   }

   has_attached_file :file

 validates_attachment_content_type :item_image, :content_type => /\Aimage\/.*\Z/
end
