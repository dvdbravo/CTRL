class CreateTactividads < ActiveRecord::Migration[6.0]
  def change
    create_table :tactividads do |t|
      t.string :codigo
      t.string :descripcion

      t.timestamps
    end
  end
end
