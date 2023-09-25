class CreateCountryOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :country_orders do |t|
      t.references :country, null: false, foreign_key: true
      t.integer :order, null: false
      t.boolean :current, default: false

      t.timestamps
    end

    add_index :country_orders, :order, unique: true
    add_index :country_orders, :current
  end
end
