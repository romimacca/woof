class Pet < ApplicationRecord
  belongs_to :user
  has_many_attached :photos,  dependent: :destroy
  has_many :postulation_pets, dependent: :destroy

  has_many :question_pets, dependent: :destroy
  has_many :questions, through: :question_pets, dependent: :destroy

  def getPetAdopted(is_adopted)
    Pet.where(is_adopted: is_adopted)
  end
  
end
 