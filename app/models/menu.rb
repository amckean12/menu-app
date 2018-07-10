class Menu < ApplicationRecord
  has_many :recipes
  has_many :users

  accepts_nested_attributes_for :recipes, :users
end
