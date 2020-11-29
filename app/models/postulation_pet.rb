class PostulationPet < ApplicationRecord
  belongs_to :pet
  belongs_to :user
  
  has_many :answer_pets, dependent: :destroy
  has_and_belongs_to_many :questions, dependent: :destroy
end
