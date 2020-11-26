class CreatePostulationPets < ActiveRecord::Migration[5.2]
  def change
    create_table :postulation_pets do |t|
      t.references :pet, foreign_key: true
      t.references :user, foreign_key: true
      t.string :state

      t.timestamps
    end
  end
end
