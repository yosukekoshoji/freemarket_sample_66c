class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
    @item.images.build
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

private
  
  def item_params
    params.require(:item).permit(:name, :price, :shipping_date,:condition, :delivery_method, :region, :postage,:category, images_attributes: [:image])
  end
end