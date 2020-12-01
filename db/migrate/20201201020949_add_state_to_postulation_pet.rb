class AddStateToPostulationPet < ActiveRecord::Migration[5.2]
  def change
    add_column :postulation_pets, :state, :integer, default: 0
  end
end
