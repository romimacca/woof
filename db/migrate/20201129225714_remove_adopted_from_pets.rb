class RemoveAdoptedFromPets < ActiveRecord::Migration[5.2]
  def change
    remove_column :pets, :adopted, :string
  end
end
