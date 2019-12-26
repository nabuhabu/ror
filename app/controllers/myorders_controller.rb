class MyordersController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]
    def show
      @myorder = Myorders.find(params[:id])
    end

    def destroy
      @myorder = Myorder.find(params[:id])

      @myorder.destroy

      redirect_to Myorder
    end

    def new
      @myorder = Myorder.new
    end

    def edit
      @myorder = Myorder.find(params[:id])
    end

    def update
      @myorder = Myorder.find(params[:id])
      if(@myorder.update(myorder_params))                  #save in the table when validated
      redirect_to Myorder
      else
      render 'edit' #if title not validated
    end
    end


      def create
        @myorder = Myorder.new(myorder_params)

        respond_to do |format|
           if @myorder.save
             format.html { redirect_to Myorder, notice: 'Success'}
           else
             format.html { render :new}
        end
      end

    end

    private def myorder_params
      params.require(:myorder).permit(:item_id, :order_date, :amount, :myclient_id) #take allowed data
    end

end
