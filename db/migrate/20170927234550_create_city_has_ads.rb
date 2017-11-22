class CreateCityHasAds < ActiveRecord::Migration[5.1]
  def change
    create_table :city_has_ads do |t|
      t.references :city, foreign_key: true
      t.references :ad, foreign_key: true

      t.timestamps
    end
  end
end
