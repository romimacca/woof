class CreateQuestionPets < ActiveRecord::Migration[5.2]
  def change
    create_table :question_pets do |t|
      t.references :pet, foreign_key: true
      t.text :text

      t.timestamps
    end
  end
end
