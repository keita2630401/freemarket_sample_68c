class PurchaseController < ApplicationController

  require 'payjp'
  before_action :set_card, only: [:index, :pay]

  def index
    if @card.blank?
      redirect_to controller: "cards", action: "new"
    else
      @item = Item.find(params[:item_id])
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      customer = Payjp::Customer.retrieve(@card.customer_id)
      @default_card_information = customer.cards.retrieve(@card.card_id)
    end
  end

  def pay
    @item = Item.find(params[:item_id])
    Payjp.api_key = Rails.application.credentials.payjp[:PAYJP_SECRET_KEY]
    Payjp::Charge.create(
      :amount => @item.price,
      :customer => @card.customer_id,
      :currency => 'jpy',
    )
    redirect_to action: 'done'
    @item.update(status:'購入済み')
    @item.update(buyer_id: current_user.id)
  end

  def done
    @item = Item.find(params[:item_id])
  end

  private

  def set_card
    @card = Card.where(user_id: current_user.id).first
  end

end
