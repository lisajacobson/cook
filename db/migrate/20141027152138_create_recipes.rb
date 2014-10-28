class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :recipe_name
      t.string :source_url
      t.integer :total_time
      t.integer :servings
    end
  end
end
