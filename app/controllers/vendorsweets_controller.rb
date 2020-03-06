class VendorsweetsController < ApplicationController
  def index
    @vendorsweets = Vendorsweet.all 
    
  end

  def edit
    @vendorsweet = Vendorsweet.find(param[:id])
  end

  def new
    @vendorsweet = Vendorsweet.new
    @vendors = Vendor.all 
    @sweets = Sweet.all 
  end

  def create 
    @vendorsweet = Vendorsraweet.new(vendorsweet_params)
      if @vendorsweet.valid?
        @vendorsweet.save
        redirect_to vendorsweet_path(@vendorsweet)
      else 
        flas[:error] = vendorsweet.errors.full_messages
        redirect_to new_vendorsweet_path
      end


  end


  private

  def vendorsweet_params
    params.require(:vendorsweet).requie(:vendor_id, :sweet_id, :price)

  end


end
