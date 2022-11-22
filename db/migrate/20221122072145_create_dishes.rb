class CreateDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :price
      t.integer :restaurant_id , foreign_key: true

      t.timestamps
    end
  end
end
