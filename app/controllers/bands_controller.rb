class BandsController < ApplicationController
  def new
    @band = Band.new
  end

  def show
    @band = Band.find(params[:id])
  end

  def create
    @band = Band.new(band_params)
    if @band.save
      log_in @band
      flash[:success] = "Band successfully created!"
      redirect_to @band
    else
      render 'new'
    end
end


  def custom_search
    render 'bands/custom_search'
  end

  def index
    @bands = Band.all
  end


#  def index
#    @bands = Band.all
#  end

  private

  def band_params
    params.require(:band).permit(:name, :location, :open, :user_id)
  end
end
