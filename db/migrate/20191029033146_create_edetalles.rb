class CreateEdetalles < ActiveRecord::Migration[6.0]
  def change
    create_table :edetalles do |t|
      t.integer :numero
      t.date :fecha
      t.string :cliente
      t.integer :linea
      t.string :nosec
      t.integer :nobultos
      t.string :noparte
      t.string :upc
      t.string :shortdesc
      t.text :longdesc
      t.float :pesototal
      t.string :um
      t.string :marca
      t.string :modelo
      t.string :serie
      t.string :origen
      t.float :cantidad
      t.string :umc
      t.decimal :precio, precision: 7, scale: 2
      t.decimal :importe, precision: 7, scale: 2
      t.string :docto
      t.integer :capturoentrada
      t.integer :capturofactura
      t.integer :reviso

      t.timestamps
    end
  end
end
