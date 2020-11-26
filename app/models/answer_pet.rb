class AnswerPet < ApplicationRecord
  belongs_to :question_pet
  belongs_to :postulation_pet
end
