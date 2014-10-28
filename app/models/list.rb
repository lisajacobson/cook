class List < ActiveRecord::Base

  has_many :recipes
  belongs_to :user
  has_many :ingredients, through: :recipes

end