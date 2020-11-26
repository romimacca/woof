class QuestionPet < ApplicationRecord
  belongs_to :pet
  belongs_to :question

  has_many :answer_pets, dependent: :destroy
end
