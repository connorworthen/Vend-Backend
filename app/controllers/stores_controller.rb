class StoresController < ApplicationController

  def index
    render json: Stores.all
  end

  def create
    @store = Store.create(store_params)
    # need validation check that user can only have one store
    @store.save
    render :json => @store
  end 

  private

  def store_params
    params.require(:store).permit(:company_name, :company_email, :description)
  end
end
