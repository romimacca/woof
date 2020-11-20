class Pet < ApplicationRecord
  belongs_to :user
  has_many_attached :photos,  dependent: :destroy


  # scope :for_me, -> { where(user_id: = current_user.id)}
end
 