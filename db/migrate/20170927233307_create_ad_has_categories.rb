class CreateAdHasCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :ad_has_categories do |t|
      t.references :category, foreign_key: true
      t.references :ad, foreign_key: true

      t.timestamps
    end
  end
end
