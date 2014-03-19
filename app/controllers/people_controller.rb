class PeopleController < ApplicationController
  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      redirect_to '/'
    else
      flash.now[:error] = "Could not save family"
      render action: "new"
    end
  end

  def person_params
    params.require(:person).permit(:fist_name, :last_name, email_attributes: [:email],phone_attributes: [:phone])
  end
end
