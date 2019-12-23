class CreatorsController < ApplicationController

  def index
    @creator = Creator.all
  end

   
  # def show
  #   @creator = Creator.find(params[:id])
  # end

end
