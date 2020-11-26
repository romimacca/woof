class AddQuestionToQuestionPet < ActiveRecord::Migration[5.2]
  def change
    add_reference :question_pets, :question, foreign_key: true
  end
end
