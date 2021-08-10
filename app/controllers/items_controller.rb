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
    item = Item.create(items_params)
    if item.valid?
      render json: item
    else
      render json: {error: "Failed to post items."}
    end
  end
  
  private

  def items_params
    params.permit(:name, :description, :price, :user_id, :image)
  end

end