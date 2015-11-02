class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.integer :goodpoints
      t.string :password_digest
      t.references :location, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
