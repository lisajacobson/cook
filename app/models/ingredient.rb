class Ingredient < ActiveRecord::Base
  validates :name, presence: true

  before_action :authenticate_user!

end