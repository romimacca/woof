class Question < ApplicationRecord
    has_many :question_pets, dependent: :destroy
    has_many :answer_pets, dependent: :destroy
end
