class CreatePuestos < ActiveRecord::Migration[6.0]
  def change
    create_table :puestos do |t|
      t.string :puesto
      t.string :descripcion

      t.timestamps
    end
  end
end
