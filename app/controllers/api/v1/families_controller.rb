module Api
  module V1
    class FamiliesController < ApplicationController
      respond_to :json
      protect_from_forgery
      
      def index
        respond_with Family.all
      end
      
      def show
        respond_with Family.find(params[:id])
      end
      
      def create
        respond_with Family.create(params[:family])
      end
      
      def update
        @family = Family.find(params[:id])
        @family.update_attributes(family_params)
        render :json => @family
      end
      
      def destroy
        respond_with Family.destroy(params[:id])
      end

      def family_params
        params.require(:family).permit(:address_id, :primary_phone_id)
      end
    end
  end
end
