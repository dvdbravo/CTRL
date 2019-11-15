class CreateUmedidas < ActiveRecord::Migration[6.0]
  def change
    create_table :umedidas do |t|
      t.string :codigo
      t.string :descripcion

      t.timestamps
    end
  end
end
