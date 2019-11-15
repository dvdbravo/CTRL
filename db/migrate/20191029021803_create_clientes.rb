class CreateClientes < ActiveRecord::Migration[6.0]
  def change
    create_table :clientes do |t|
      t.string :codigo
      t.string :nombre
      t.string :rsocial
      t.string :rfc
      t.string :calleynumero
      t.string :colonia
      t.string :delegacion
      t.string :ciudad
      t.string :estado
      t.string :codigopostal
      t.string :telefono
      t.string :correoe
      t.string :contacto
      t.string :puesto
      t.string :telefonoc
      t.string :correoec
      t.string :agente
      t.string :tipoactividad
      t.date :clientedesde
      t.date :ultimatransaccion
      t.string :pais

      t.timestamps
    end
  end
end
