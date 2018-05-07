class Profile < ApplicationRecord

  include ImageUploader::Attachment.new(:image) # adds an `image` virtual attribute
  belongs_to :category
  belongs_to :user
end
