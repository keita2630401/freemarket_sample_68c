class ItemsController < ApplicationController
  def index
    @items = Item.all.last(3).reverse
  end

  def show
    @item = Item.find(params[:id])
    @items = Item.all
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

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to root_path
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
    params.require(:item).permit(:name, :description, :condition_id, :shipping_cost_side_id, :prefecture_id, :shipping_days_id, :price, images_attributes: [:image, :_destroy, :id]).merge(user_id: current_user.id)
  end
end
