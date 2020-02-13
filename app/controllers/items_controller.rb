class ItemsController < ApplicationController
  def new
    @item = Item.new
    @item.images.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :condition, :shipping_cost_side, :origin_area, :shipping_days, :price, images_attributes: [:src])
  end
end
