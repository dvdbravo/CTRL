class CreateUembarques < ActiveRecord::Migration[6.0]
  def change
    create_table :uembarques do |t|
      t.string :codigo
      t.string :descripcion

      t.timestamps
    end
  end
end
