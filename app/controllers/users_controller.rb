class UsersController < ApplicationController
  def index
    @UserItems = Item.where(user_id: current_user.id).where(status: "exihibiting")
    @BuyerItems = Item.where(buyer_id: current_user.id)
  end

  def logout
  end

end
