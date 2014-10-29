class AddListRefToRecipe < ActiveRecord::Migration
  def change
    add_reference :recipes, :list, index: true
  end
end
