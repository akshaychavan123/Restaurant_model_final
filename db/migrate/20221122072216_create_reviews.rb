class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.integer :rating
      t.integer :reviewable_id , foreign_key: true , polymorphic: true
      t.string :reviewable_type

      t.timestamps
    end
  end
end
