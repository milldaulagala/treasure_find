class Item < ApplicationRecord

  include ImageUploader::Attachment.new(:image) # adds an `image` virtual attribute
  belongs_to :user
end
