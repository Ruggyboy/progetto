class BandsController < ApplicationController
  def new
  end

  def show
    @band = Band.find(params[:id])
  end
end
