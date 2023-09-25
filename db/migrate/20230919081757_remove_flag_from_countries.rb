class RemoveFlagFromCountries < ActiveRecord::Migration[7.0]
  def change
    remove_column :countries, :flag, :text
  end
end
