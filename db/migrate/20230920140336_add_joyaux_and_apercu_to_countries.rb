class AddJoyauxAndApercuToCountries < ActiveRecord::Migration[7.0]
  def change
    add_column :countries, :joyaux, :text
    add_column :countries, :apercu, :text
  end
end
