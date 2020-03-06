class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def show
    
    @vendor = Vendor.find(params[:id]) 
    @sweets = Sweet.all 
  end



  private

  def vendor_params
    params.require(:vendor).permit(:name)
  end


end
