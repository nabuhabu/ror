class MyclientsController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]
    def show
      @myclient = Myclients.find(params[:id])
    end

    def destroy
      @myclient = Myclient.find(params[:id])

      @myclient.destroy

      redirect_to Myclient
    end

    def new
      @myclient = Myclient.new
    end

    def edit
      @myclient = Myclient.find(params[:id])
    end

    def update
      @myclient = Myclient.find(params[:id])
      if(@myclient.update(myclient_params))                  #save in the table when validated
      redirect_to Myclient
      else
      render 'edit' #if title not validated
    end
    end


      def create
        @myclient = Myclient.new(myclient_params)

        respond_to do |format|
           if @myclient.save
             format.html { redirect_to Myclient, notice: 'Success'}
           else
             format.html { render :new}
        end
      end

    end

    private def myclient_params
      params.require(:myclient).permit(:name, :birth, :company, :phone_number, :city ) #take allowed data
    end
end
