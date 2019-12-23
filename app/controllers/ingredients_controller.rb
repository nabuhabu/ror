class IngredientsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @ingredient = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    if(@ingredient.update(ingredient_params))                  #save in the table when validated
    redirect_to @ingredient
    else
    render 'edit' #if title not validated
  end
  end

  def destroy
  @ingredient = Ingredient.find(params[:id])
  @ingredient.destroy
  redirect_to ingredients_path
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    # @ingredient.save
    # redirect_to @ingredient

    respond_to do |format|
       if @ingredient.save
         format.html { redirect_to @ingredient, notice: 'Success'}
       else
         format.html { render :new}
    end
  end

end

  private def ingredient_params
    params.require(:ingredient).permit(:name, :price, :production_date, :storage_time, :creator ) #take allowed data
  end

  end
