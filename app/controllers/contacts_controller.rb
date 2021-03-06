class ContactsController < ApplicationController
  def index
    redirect_to :action => :new
  end

  def new
    initialize_contact_page

    @contact = Contact.new
  end

  def create
    initialize_contact_page

    @contact = Contact.new(params[:contact])

    if @contact.valid?
      Mailer.contact_notifier(@contact).deliver
      redirect_to new_contact_path, :notice => "Bedankt voor je bericht, het zal zo snel mogelijk behandeld worden."
    else
      flash[:alert] = "U hebt niet alle verplichte velden ingevuld."
      render :action => "new"
    end
  end

  private

  def initialize_contact_page
    @title         = "PitsLamp Contactsformulier"
    @selected_page = "contact"
    @body_style    = "contact"
  end

end
