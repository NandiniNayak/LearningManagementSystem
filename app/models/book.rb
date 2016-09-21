class Book < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates_presence_of :body, :title
  
  ratyrate_rateable "rating"
  acts_as_taggable_on :tags
  mount_uploader :image, BookImageUploader
end
