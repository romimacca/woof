class Pet < ApplicationRecord
  belongs_to :user
  has_many_attached :photos,  dependent: :destroy


  # def image_urls

  # end
end
 