class AddSterilizedToPet < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :sterilized, :boolean
  end
end
