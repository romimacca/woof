class RemoveStateFromPostulationPet < ActiveRecord::Migration[5.2]
  def change
    remove_column :postulation_pets, :state, :string
  end
end
