class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.integer :stars
      t.string :comment
      t.string :text
      t.references :book, index: true

      t.timestamps null: false
    end
    add_foreign_key :reviews, :books
  end
end
