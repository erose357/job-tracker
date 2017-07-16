class ContactsController < ApplicationController
  def create
    company = Company.find(params[:company_id])
    @contact = company.contacts.new(contact_params)
    if @contact.save
      flash[:success] = "Contact successfully added!"
      redirect_to company_path(company)
    else
      redirect_to company_path(company)
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :position, :email)
  end
end
