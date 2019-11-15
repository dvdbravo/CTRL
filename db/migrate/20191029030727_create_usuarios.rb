class CreateUsuarios < ActiveRecord::Migration[6.0]
  def change
    create_table :usuarios do |t|
      t.integer :usuario
      t.string :nombre
      t.string :password
      t.string :permisos
      t.string :tipo

      t.timestamps
    end
  end
end
