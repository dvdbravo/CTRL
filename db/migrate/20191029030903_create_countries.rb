class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.string :codigo
      t.string :nombre

      t.timestamps
    end
  end
end
