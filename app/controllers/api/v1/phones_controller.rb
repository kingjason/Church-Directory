module Api
  module V1
    class PhonesController < ApplicationController
      respond_to :json
      protect_from_forgery
      
      def create
        @phone = Phone.new(phone_params)
        if @phone.save
          render :json => @phone
        else
          flash.now[:error] = "Could not save family"
          render action: "new"
        end
      end

      def phone_params
        params.require(:phone).permit(:number, :family_id, :person_id)
      end
    end
  end
end
