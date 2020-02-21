class ItemsController < ApplicationController

  require 'payjp'
  before_action :set_item, only: [:show, :destroy, :edit, :update]

  def index
    @items = Item.includes(:images).last(3).reverse
  end

  def show
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
    if @item.destroy
      redirect_to root_path
    else
      redirect_to item_path(@item.id)
    end
  end

  def purchase
  end


  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def purchase
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :condition_id, :shipping_cost_side_id, :prefecture_id, :shipping_days_id, :price, images_attributes: [:image, :_destroy, :id]).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
