class RemoveQuestionPetFromAnswerPet < ActiveRecord::Migration[5.2]
  def change
    remove_reference :answer_pets, :question_pet, foreign_key: true
  end
end
