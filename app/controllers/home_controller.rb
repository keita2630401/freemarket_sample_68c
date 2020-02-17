class HomeController < ApplicationController
  def top
    @items = Item.where(status: 'exihibiting').includes(:user).order("created_at DESC").page(params[:page]).per(3)
  end
end
