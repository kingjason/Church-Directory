class EmailController < ApplicationController
  def new
    @email = Email.new
  end

  def create
    @email = Email.new(email_params)
    if @email.save
      redirect_to '/'
    else
      flash.now[:error] = "Could not save family"
      render action: "new"
    end
  end

  def email_params
    params.require(:email).permit(:address)
  end
end
