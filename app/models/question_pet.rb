class QuestionPet < ApplicationRecord
  belongs_to :pet
  belongs_to :question
end
