class RemovePopulationFromCountries < ActiveRecord::Migration[7.0]
  def change
    remove_column :countries, :population, :text
  end
end
