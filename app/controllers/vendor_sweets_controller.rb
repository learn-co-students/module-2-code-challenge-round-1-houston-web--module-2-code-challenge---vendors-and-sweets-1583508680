class VendorSweetsController < ApplicationController
 
  def new
    @vendor_sweets = VendorSweet.new
    @vendors = Vendor.all 
    @sweets = Sweet.all
  end

  def create
    @vendor_sweets = VendorSweet.new(strong_params)
    if @vendor_sweets.valid?
      @vendor_sweets.save
    redirect_to vendor_path(@vendor_sweets.vendor_id)
    else 
      flash[:errors] = @vendor_sweets.errors.full_messages
      redirect_to new_vendor_sweet_path
    end
end

  private

  def strong_params
   
    params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
  end

end
