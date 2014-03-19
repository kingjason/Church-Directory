module Api
  module V1
    class PeopleController < ApplicationController
      respond_to :json
      protect_from_forgery
      
      def index
        respond_with Person.all
      end
      
      def show
        respond_with Person.find(params[:id])
      end
      
      def create
        @person = Person.new(person_params)
        if @person.save
          render :json => @person
        else
          flash.now[:error] = "Could not save family"
          render action: "new"
        end
      end

      def person_params
        params.require(:person).permit(:adult, :family_id, :fist_name, :last_name, email_attributes: [:email],phone_attributes: [:phone])
      end
      
      def update
        respond_with Person.update(params[:id], params[:people])
      end
      
      def destroy
        respond_with Person.destroy(params[:id])
      end
    end
  end
end
