class CreateDestinos < ActiveRecord::Migration[6.0]
  def change
    create_table :destinos do |t|
      t.string :codigo
      t.string :nombre
      t.string :estado
      t.string :pais

      t.timestamps
    end
  end
end
