class StoresController < ApplicationController

  skip_before_action :authorized, only: [:create, :show]

  def show
    @store = Store.find(params[:id])
    render json: @store
  end
  
  def create
    store = Store.create(store_params)
    
    # binding.pry
    if store.valid?
      # binding.pry
      render json: { store: store, success: "success" } 
    else
      render json: { error: "Error. Please try again!"}
    end
  end 

  private

  def store_params
    params.require(:store).permit(:company_name, :company_email, :description, :user_id)
  end
end
