module Api
  module V1
    class EmailsController < ApplicationController
      respond_to :json
      protect_from_forgery
      
      def create
        @email = Email.new(email_params)
        if @email.save
          render :json => @email
        else
          flash.now[:error] = "Could not save family"
          render action: "new"
        end
      end

      def email_params
        params.require(:email).permit(:address, :person_id)
      end
    end
  end
end
