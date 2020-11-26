class CreateAnswerPets < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_pets do |t|
      t.references :question_pet, foreign_key: true
      t.references :postulation_pet, foreign_key: true
      t.text :text

      t.timestamps
    end
  end
end
