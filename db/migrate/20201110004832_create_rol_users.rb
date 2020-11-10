class CreateRolUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :rol_users do |t|
      t.references :rol, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
