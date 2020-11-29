class AnswerPet < ApplicationRecord
  belongs_to :postulation_pet
  belongs_to :question
end
