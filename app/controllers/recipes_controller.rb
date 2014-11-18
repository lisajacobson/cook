class RecipeController < ApplicationController

  def create
    unless Recipe.exists?(user_id: current_user.id, name = recipe_params[:recipe_name])
    @recipe = Recipe.create(recipe_params)
    render :json => @recipe
  end

private
  def recipe_params
    params.require(:recipe).permit(:user_id, :recipe_name, :image, :servings, :total_time)
  end

end