class CreateGoodspots < ActiveRecord::Migration
  def change
    create_table :goodspots do |t|
      t.string :name
      t.text   :description
      t.string :address
      t.string :url
      t.string :category
      t.string :goodvotes
      t.references :user, index: true, foreign_key: true
      t.references :location, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
