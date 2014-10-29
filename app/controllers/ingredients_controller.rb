class IngredientsController < ApplicationController

  before_action :authenticate_user!

  def index
    @ingredients = Ingredient.all  
  end

  def new
    @user = current_user
    @ingredient = Ingredient.new
  end

  def edit
    populate_ingredient
  end

  def update
    populate_ingredient
    @ingredient.update(concern_params)
    redirect_to root_path
  end

  def create
    @ingredient = Ingredient.new(ingredient_params.merge(user_id: current_user.id))
    if @ingredient.save
      redirect_to ingredient_path(current_user, @ingredient)
    else
      render 'new'
    end
  end

  def show
    populate_ingredient
  end

  def destroy
    populate_ingredient
    @ingredient.destroy
    redirect_to root_path
  end

private

  def populate_ingredient
    @ingredient = Ingredient.find( params[:id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:text)
  end

end