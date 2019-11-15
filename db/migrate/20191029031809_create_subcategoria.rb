class CreateSubcategoria < ActiveRecord::Migration[6.0]
  def change
    create_table :subcategoria do |t|
      t.string :codigo
      t.string :descripcion

      t.timestamps
    end
  end
end
