class Cuisine < ActiveRecord::Base
  validates :cuisine_name, presence: true

  has_and_belongs_to_many :recipes
  has_many :ingredients, through: :recipes

end