class Category < ActiveRecord::Base
  has_many :reviews
  has_many :subcategories
end