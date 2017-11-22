class CreateAttentions < ActiveRecord::Migration[5.1]
  def change
    create_table :attentions do |t|
      t.references :city, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
