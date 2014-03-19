class FamiliesController < ApplicationController
  def new
    @family = Family.new
    2.times { 
      person = @family.people.build 
      person.build_email
      person.build_phone
    }
    @family.build_phone
    @family.address = Address.new
  end

  def create
    @family = Family.new(family_params)
    if @family.save
      redirect_to @family
    else
      flash.now[:error] = "Could not save family"
      render action: "new"
    end
  end

  def family_params
    params.require(:family).permit(phone_attributes: [:number], people_attributes: [:fist_name, :last_name,email_attributes: [:address],phone_attributes: [:number]],address_attributes: [:line1, :line2, :city, :state, :zip])
  end

  def show
    @family = Family.find(params[:id])
    person = @family.people.build 
  end

  def index
    @families = Family.paginate(:page => params[:page])
  end
end
