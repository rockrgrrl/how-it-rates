class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :subcategory
  validates_presence_of :location, :description, :rating
end
