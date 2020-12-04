class Pet < ApplicationRecord
  belongs_to :user
  has_many_attached :photos,  dependent: :destroy
  has_many :postulation_pets, dependent: :destroy

  has_many :question_pets, dependent: :destroy
  has_many :questions, through: :question_pets, dependent: :destroy

  def getPetAdopted(is_adopted)
    Pet.where(is_adopted: is_adopted)
  end

  def self.created_by_day
    group_by_day(:created_at).count
  end

  def to_s
    self.email
  end
  
end
 