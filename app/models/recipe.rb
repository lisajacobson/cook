class Recipe < ActiveRecord::Base

  belongs_to :user 
  belongs_to :list
  has_many :ingredients
  has_and_belongs_to_many :cuisines

  validates_uniqueness_of :user_id, :recipe_name, :image, :source_url

end