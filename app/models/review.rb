class Review < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :location, :description, :rating
end
