class CreateDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :details do |t|
      t.references :ad, foreign_key: true
      t.text :terms
      t.date :expiration_date
      t.string :content
      t.integer :age
      t.text :description

      t.timestamps
    end
  end
end
