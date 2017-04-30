class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.save
    respond_to do |format|
            format.js { render 'contacts/update.js.erb'}
        end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
