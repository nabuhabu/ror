class ItemsController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]
  def show
    @item = Items.find(params[:id])
  end

  def destroy
    @item = Item.find(params[:id])

    @item.destroy

    redirect_to Item
  end

  def new
    @item = Item.new
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if(@item.update(item_params))                  #save in the table when validated
    redirect_to Item
    else
    render 'edit' #if title not validated
  end
  end


    def create
      @item = Item.new(item_params)

      respond_to do |format|
         if @item.save
           format.html { redirect_to Item, notice: 'Success'}
         else
           format.html { render :new}
      end
    end

  end

  private def item_params
    params.require(:item).permit(:name, :price, :production_date, :storage_time, :creator_id ) #take allowed data
  end

end
