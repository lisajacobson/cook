class Ingredient < ActiveRecord::Base
  validates :name, presence: true

  belongs_to :recipe
  belongs_to :list, :cuisine, through: :recipe

  before_action :authenticate_user!

end