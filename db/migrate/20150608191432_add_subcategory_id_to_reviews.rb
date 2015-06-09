class AddSubcategoryIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :subcategory_id, :integer
  end
end
