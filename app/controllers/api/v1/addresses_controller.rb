module Api
  module V1
    class AddressesController < ApplicationController
      respond_to :json
      protect_from_forgery
      
      def create
        @address = Address.new(address_params)
        if @address.save
          render :json => @address
        else
          flash.now[:error] = "Could not save family"
          render action: "new"
        end
      end

      def address_params
        params.require(:address).permit(:line1, :family_id,:latitude, :longitude)
      end
    end
  end
end
