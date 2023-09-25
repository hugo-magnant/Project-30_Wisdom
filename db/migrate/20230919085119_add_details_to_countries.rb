class AddDetailsToCountries < ActiveRecord::Migration[7.0]
  def change
    change_table :countries do |t|
      t.text :introduction
      t.text :flag
      t.text :population
      t.text :geo
      t.text :histoire
      t.text :culture
      t.text :cuisine
      t.text :religion
      t.text :education
      t.text :tourisme
      t.text :art
      t.text :sport
      t.text :nature
      t.text :science
      t.text :international
      t.text :lieu
      t.text :economie
    end
  end
end
