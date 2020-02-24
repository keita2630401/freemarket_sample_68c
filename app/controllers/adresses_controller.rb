class AdressesController < ApplicationController

  def index
  end

  def new
    @adress = Adress.new
  end

  def create
    @adress = Adress.new(adress_params)
    if @adress.save!
      render new_card_path
      #ここに登録が完了したことを表示するページへのパスを記述する必要があります
    else
      render :new
    end
  end

  def edit
  end

  def update
    @adress = Adress.find(params[:id])
    if @adress.update(adress_params)
      #遷移したいページのパスを記述してください
    else
      render :edit
    end
  end

  private

  def adress_params
    params.require(:adress).permit(:post_number, :prefecture_id, :municipality, :town, :building, :telephone_number).merge(user_id: current_user.id)
  end

end
