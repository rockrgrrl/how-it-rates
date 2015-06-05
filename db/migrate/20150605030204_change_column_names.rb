class ChangeColumnNames < ActiveRecord::Migration
   def change
    rename_column :reviews, :type, :variety
  end
end
