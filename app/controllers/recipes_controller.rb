class RecipesController < ApplicationController

  def create
    # unless Recipe.exists?(user_id: current_user.id, name = recipe_params[:recipe_name], image = recipe_params[:image], link = recipe_params[:source_url])

    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
    if @recipe.save
      respond_to do |format|
        format.html {redirect_to new_ingredient_path}
        format.json {render json: @recipe}
      end
    end

    # @recipe = Recipe.create(recipe_params)  
    # render :json => @recipe
    # redirect_to 'ingredients#new'
  end

private
  def recipe_params
    params.require(:recipe).permit(:user_id, :recipe_name, :image, :servings, :total_time, :source_url)
  end

end