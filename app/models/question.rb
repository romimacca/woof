class Question < ApplicationRecord
    has_many :question_pets, dependent: :destroy
    has_many :pets, through: :question_pets, dependent: :destroy

end
