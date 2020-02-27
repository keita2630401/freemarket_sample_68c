class ItemsController < ApplicationController
  require 'payjp'
  before_action :set_item, only: [:show, :destroy, :edit, :update]
  before_action :set_category, only: [:index, :show]
  before_action :set_category_edit, only: [:edit, :update]

  def index
    @itemsExihibiting = Item.where(status: :exihibiting).last(3).reverse
  end

  def show
    @items = Item.all
    @card = Card.where(user_id: current_user.id).first
    @category = Category.find(@item.category_id)
  end

  def new
    @item = Item.new
    @item.images.new
    @children = Category.find(params[:childId]).children if params[:childId]
    @children = Category.find(params[:id]).children if params[:id]
    respond_to do |format|
      format.html
      format.json { @children }
    end
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
    params.require(:item).permit(:name, :description, :condition_id, :shipping_cost_side_id, :prefecture_id, :shipping_days_id, :price, :category_id, images_attributes: [:image, :_destroy, :id]).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def set_category
    @parents = Category.roots
  end

  def set_category_edit
    @grandChildCategory = Category.find(@item.category_id)
    @childCategory = @grandChildCategory.parent
    @parent = @childCategory.parent
    @grandChildCategories = @childCategory.children
    @childCategories = @parent.children
  end
end
