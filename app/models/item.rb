class Item < ApplicationRecord

  include ImageUploader::Attachment.new(:image) # adds an `image` virtual attribute
  belongs_to :user
  has_many :appraisals

   def self.search_by_name(search)
    where("LOWER(name) LIKE ?", "%#{search.downcase}%")
   end

   def average_appraisal_amount
    self.appraisals.average(:value) 
   end

end
