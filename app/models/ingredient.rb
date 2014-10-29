class Ingredient < ActiveRecord::Base
  validates :ingredient_name, presence: true

  belongs_to :recipe

end