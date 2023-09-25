class RemoveColumnsFromCountries < ActiveRecord::Migration[7.0]
  def change
    remove_column :countries, :histoire, :text
    remove_column :countries, :culture, :text
    remove_column :countries, :cuisine, :text
    remove_column :countries, :religion, :text
    remove_column :countries, :education, :text
    remove_column :countries, :tourisme, :text
    remove_column :countries, :art, :text
    remove_column :countries, :sport, :text
    remove_column :countries, :nature, :text
    remove_column :countries, :science, :text
    remove_column :countries, :international, :text
    remove_column :countries, :lieu, :text
    remove_column :countries, :economie, :text
  end
end
