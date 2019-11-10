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
      #log_in @band
      flash[:success] = "Band successfully created!"
      #redirect_to @user
      redirect_to @band
      current_user.update_attribute(:leader, true)
    else
      flash[:info] = "Band name isn't valid"
      render 'bands/new'
    end
  end

  def edit
    @band = Band.find(params[:id])
  end

  def update
    @band = Band.find(params[:id])
    if @band.update_attributes(band_params)
      flash[:success] = "Band information updated"
      redirect_to @band
    else
      render 'edit'
    end
  end

  def custom_search
    render 'bands/custom_search'
  end

  def index
    @bands = Band.all
  end

  def destroy
    Band.find(params[:id]).destroy
    flash[:success] = "Band deleted"
    redirect_to bands_url
    current_user.update_attribute(:leader, false)
  end

  private

  def band_params
    params.require(:band).permit(:name, :location, :open, :user_id)
  end
end
