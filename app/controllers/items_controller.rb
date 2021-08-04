class ItemsController < ApplicationController

  skip_before_action :authorized, only: [:show, :create, :update, :index]

  def index
    items = Item.all
    render json: items
  end

  def show
    item = Item.find_by(id: params[:id])
    render json: item
  end

  def create
    item = Item.create(item_params)
    if item.valid?
      render json: { item: item, success: "test"}
    else
      render json: {error: "Failed to post itemz."}
    end
  end
  
  private

  def items_params
    params.require(:item).permit(:name, :description, :price, :user_id, :image)
  end

end