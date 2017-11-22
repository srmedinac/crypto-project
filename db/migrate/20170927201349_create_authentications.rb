class CreateAuthentications < ActiveRecord::Migration[5.1]
  def change
    create_table :authentications do |t|
      t.references :user, foreign_key: true
      t.string :password

      t.timestamps
    end
  end
end
