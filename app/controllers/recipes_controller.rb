class RecipesController < ApplicationController

  def create

    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id

    if @recipe.save
      respond_to do |format|
        format.html {redirect_to new_ingredient_path}
        format.json {render json: @recipe}
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.json { 
          render :json => { :errors => @recipe.errors.full_messages, :status => 422}      
        }
      end
    end
  end

private
  def recipe_params
    params.require(:recipe).permit(:user_id, :recipe_name, :image, :servings, :total_time, :source_url)
  end

end