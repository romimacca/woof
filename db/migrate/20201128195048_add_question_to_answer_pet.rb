class AddQuestionToAnswerPet < ActiveRecord::Migration[5.2]
  def change
    add_reference :answer_pets, :question, foreign_key: true
  end
end
