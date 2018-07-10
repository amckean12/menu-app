class Recipe < ApplicationRecord
  has_many :meals
  has_many :users, :through => :meals
  belongs_to :menu
end
