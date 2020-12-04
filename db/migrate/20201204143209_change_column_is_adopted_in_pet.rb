class ChangeColumnIsAdoptedInPet < ActiveRecord::Migration[5.2]
  def change
    change_column :pets, :is_adopted, :boolean, default: false
  end
end
