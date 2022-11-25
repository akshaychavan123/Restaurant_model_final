class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.decimal :rating
      t.integer :restaurant_id , foreign_key: true
      t.string :restaurant_name , foreign_key: true

      t.timestamps
    end
  end
end
