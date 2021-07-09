class StoresController < ApplicationController

  skip_before_action :authorized, only: [:create]

  def index
    render json: Stores.all
  end

  def create
    store = Store.new(store_params) 
    # need validation check that user can only have one store
    if store.save
      render json: { store: StoreSerializer.new(store), success: "success" }
    else
      render json: { error: "error"}
    end
  end 

  private

  def store_params
    params.require(:store).permit(:company_name, :company_email, :description)
  end
end
