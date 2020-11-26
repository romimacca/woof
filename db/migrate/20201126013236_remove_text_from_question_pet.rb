class RemoveTextFromQuestionPet < ActiveRecord::Migration[5.2]
  def change
    remove_column :question_pets, :text, :text
  end
end
