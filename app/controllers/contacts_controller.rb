class ContactsController < ApplicationController

  def new
    @contact = Contact.new()
  end

  def create
    Contact.create(signup_params)
    redirect_to '/'
  end

  private

  def signup_params
    params.require(:contact).permit(:name,:email,:message)
  end
end
