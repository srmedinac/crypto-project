class CreateAds < ActiveRecord::Migration[5.1]
  def change
    create_table :ads do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.integer :hits

      t.timestamps
    end
  end
end
