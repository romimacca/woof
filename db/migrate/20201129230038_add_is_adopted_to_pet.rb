class AddIsAdoptedToPet < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :is_adopted, :boolean, default: false
  end
end
