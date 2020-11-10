class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.text :history
      t.string :sex
      t.string :size
      t.string :breed
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
