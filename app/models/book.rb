class Book < ApplicationRecord
  belongs_to :user
  ratyrate_rateable "rating"
  acts_as_taggable_on :tags
  mount_uploader :image, BookImageUploader
end
