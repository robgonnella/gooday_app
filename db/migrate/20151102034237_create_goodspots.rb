class CreateGoodspots < ActiveRecord::Migration
  def change
    create_table :goodspots do |t|
      t.string :name
      t.text   :description
      t.string :address
      t.string :url
      t.string :category
      t.string :goodvotes

      t.timestamps null: false
    end
  end
end
