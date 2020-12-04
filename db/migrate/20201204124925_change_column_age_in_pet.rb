class ChangeColumnAgeInPet < ActiveRecord::Migration[5.2]
  def change
    change_column :pets, :age, :string
  end
end
