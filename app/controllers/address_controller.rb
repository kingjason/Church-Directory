class AddressController < ApplicationController
  def new
    @address = Address.new
  end

  def create
    @address = Address.new(address_params)
    if @address.save
      redirect_to '/'
    else
      flash.now[:error] = "Could not save family"
      render action: "new"
    end
  end

  def address_params
    params.require(:address).permit(:line1, :line2)
  end
end
