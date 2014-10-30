class IngredientsController < ApplicationController

  before_action :authenticate_user!

  def index
    @ingredients = Ingredient.all
    if params[:ingredients]
      @results = params[:ingredients].map do |r|
      Ingredient.find(r)
      end
    end
    @result_id = params[:ingredients]
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
    #populate_ingredient
  end

  def splash
    
  end

  def destroy
    populate_ingredient
    @ingredient.destroy
    redirect_to root_path
  end

#if ingredients are specified in params, run search function, otherwise display option to search (form again)
#basic search form sinatra

private

  def populate_ingredient
    @results = Ingredient.find( params[:id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:text)
  end

end