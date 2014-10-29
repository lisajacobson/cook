class Recipe < ActiveRecord::Base

  validates :servings, numericality: true
  validates :servings, numericality: true 

  belongs_to :user 
  belongs_to :list
  has_many :ingredients
  has_and_belongs_to_many :cuisines


end