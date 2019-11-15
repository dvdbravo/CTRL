class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :codigo
      t.string :descripcion
      t.text :longdesc
      t.string :sku
      t.string :upc
      t.string :categoria
      t.string :subcategoria
      t.string :idmarca
      t.string :vendedor
      t.float :peso
      t.string :umedida
      t.float :volumen
      t.string :umedidav
      t.float :alto
      t.string :umedidaa
      t.float :ancho
      t.string :umedidaw
      t.float :largo
      t.string :umedidal
      t.decimal :costo, precision: 7, scale: 2
      t.string :paisorigen

      t.timestamps
    end
  end
end
