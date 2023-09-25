class AddNotNullConstraintsToCountries < ActiveRecord::Migration[7.0]
  def change
    change_column_null :countries, :name, false
    change_column_null :countries, :flat_name, false
    change_column_null :countries, :introduction, false
    change_column_null :countries, :flag, false
    change_column_null :countries, :population, false
    change_column_null :countries, :geo, false
    change_column_null :countries, :joyaux, false
    change_column_null :countries, :apercu, false
  end
end
