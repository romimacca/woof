class PostulationPet < ApplicationRecord
  belongs_to :pet
  belongs_to :user
  has_many :question_pets, dependent: :destroy
  has_many :questions, through: :question_pets, dependent: :destroy

  has_many :answer_pets, dependent: :destroy
  
end
