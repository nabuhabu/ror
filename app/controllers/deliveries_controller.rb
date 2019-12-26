class DeliveriesController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]
      def show
        @delivery = Deliveries.find(params[:id])
      end

      def destroy
        @delivery = Delivery.find(params[:id])

        @delivery.destroy

        redirect_to Delivery
      end

      def new
        @delivery = Delivery.new
      end

      def edit
        @delivery = Delivery.find(params[:id])
      end

      def update
        @delivery = Delivery.find(params[:id])
        if(@delivery.update(delivery_params))                  #save in the table when validated
        redirect_to Delivery
        else
        render 'edit' #if title not validated
      end
      end


        def create
          @delivery = Delivery.new(delivery_params)

          respond_to do |format|
             if @delivery.save
               format.html { redirect_to Delivery, notice: 'Success'}
             else
               format.html { render :new}
          end
        end

      end

      private def delivery_params
        params.require(:delivery).permit(:myorder_id, :price) #take allowed data
      end
end
