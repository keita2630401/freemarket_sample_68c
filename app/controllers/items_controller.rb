class ItemsController < ApplicationController
  def index
    @items = Item.includes(:images).last(3).reverse
  end

  def show
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
  end
  
  def purchase
  end


  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :condition_id, :ShippingCostSide_id, :OriginArea_id, :ShippingDays_id, :price, images_attributes: [:image, :_destroy, :id])
  end
end
