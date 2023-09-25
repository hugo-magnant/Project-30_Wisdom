class CreateCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :countries do |t|
      t.text :name
      t.text :flag
      t.text :population

      t.timestamps
    end
  end
end
