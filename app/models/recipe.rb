class Recipe < ActiveRecord::Base

  validates :servings, numericality: true
  validates :servings, numericality: true 

  before_action :authenticate_user!

end