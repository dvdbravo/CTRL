class CreateParametros < ActiveRecord::Migration[6.0]
  def change
    create_table :parametros do |t|
      t.string :nombre
      t.string :calleynumero
      t.string :ciudadedocp
      t.string :telefono
      t.string :correoe
      t.integer :noentrada

      t.timestamps
    end
  end
end
