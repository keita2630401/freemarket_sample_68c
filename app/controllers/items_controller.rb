class ItemsController < ApplicationController
  def index
    @items = Item.all.last(3).reverse
  end

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

  def purchase
  end

  end

  def xxx
  end
  private

  def item_params
    params.require(:item).permit(:name, :description, :condition_id, :ShippingCostSide_id, :OriginArea_id, :ShippingDays_id, :price, images_attributes: [:image])
  end
end
