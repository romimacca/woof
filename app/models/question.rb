class Question < ApplicationRecord
    has_many :question_pets, dependent: :destroy
end
