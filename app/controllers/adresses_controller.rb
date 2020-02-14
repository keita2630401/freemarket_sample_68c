class AdressesController < ApplicationController
  
  def index
  end
  
  def new
    @adress = Adress.new
  end

  def create
    @adress = Adress.new(adress_params)
    if @adress.save
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
    params.require(:adress).permit( user_ids: [] )
  end

end
