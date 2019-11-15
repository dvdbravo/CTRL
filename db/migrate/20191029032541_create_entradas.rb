class CreateEntradas < ActiveRecord::Migration[6.0]
  def change
    create_table :entradas do |t|
      t.integer :numero
      t.date :fecha
      t.string :cliente
      t.string :destino
      t.string :descripcion
      t.float :cantidad
      t.float :peso
      t.string :um
      t.string :volumen
      t.string :ubicacion
      t.string :uembarque
      t.string :proveedor
      t.string :docto
      t.string :tdocto

      t.timestamps
    end
  end
end
