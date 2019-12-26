class CreatorsController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]
  def show
    @creator = Creators.find(params[:id])
  end

  def destroy
    @creator = Creator.find(params[:id])

    @creator.destroy

    redirect_to Creator
  end

  def new
    @creator = Creator.new
  end

  def edit
    @creator = Creator.find(params[:id])
  end

  def update
    @creator = Creator.find(params[:id])
    if(@creator.update(creator_params))                  #save in the table when validated
    redirect_to Creator
    else
    render 'edit' #if title not validated
  end
  end


    def create
      @creator = Creator.new(creator_params)

      respond_to do |format|
         if @creator.save
           format.html { redirect_to Creator, notice: 'Success'}
         else
           format.html { render :new}
      end
    end

  end

  private def creator_params
    params.require(:creator).permit(:name, :registration_date, :city, :specialization, :phone_number ) #take allowed data
  end

  end
