class Item < ApplicationRecord

  include ImageUploader::Attachment.new(:image) # adds an `image` virtual attribute
  belongs_to :user

   def self.search_by_name(search)
    where("LOWER(name) LIKE ?", "%#{search.downcase}%")
   end

end
