class Recipe < ActiveRecord::Base

  validates :servings, numericality: true
  validates :servings, numericality: true 

  belongs_to :user, :list
  has_many :ingredients
  has_many_and_belongs_to :cuisines

  before_action :authenticate_user!

end