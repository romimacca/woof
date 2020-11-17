class Photo < ApplicationRecord
  belongs_to :pet
  has_many_attached :images
end
