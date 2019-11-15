class CreateVendors < ActiveRecord::Migration[6.0]
  def change
    create_table :vendors do |t|
      t.string :codigo
      t.string :nombre
      t.string :calleynumero
      t.string :ciudad
      t.string :estado
      t.string :codigopostal
      t.string :telefono
      t.string :correoe
      t.string :contacto
      t.string :puesto
      t.string :telefonoc
      t.string :correoec
      t.date :ultimatransaccion
      t.string :taxid
      t.string :pais

      t.timestamps
    end
  end
end
