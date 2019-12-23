class ItemsController < ApplicationController

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
