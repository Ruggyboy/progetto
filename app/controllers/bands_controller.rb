class BandsController < ApplicationController
  def new
    @band = Band.new
  end

  def show
    @band = Band.find(params[:id])
  end

  def create
    @band = Band.new(band_params)
    log_in @band
      flash[:success] = "Band successfully created!"
      redirect_to @band
    else
      render 'new'
    end
  end

#  def index
#    @bands = Band.all
#  end

  private

  def band_params
    params.require(:band).permit(:name)
  end
end
