class AddFlatNameToCountries < ActiveRecord::Migration[7.0]
  def change
    add_column :countries, :flat_name, :text
  end
end
