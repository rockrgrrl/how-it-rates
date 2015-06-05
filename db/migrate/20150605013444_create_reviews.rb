class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :location
      t.string :type
      t.text :description
      t.integer :rating
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :reviews, :users
  end
end
