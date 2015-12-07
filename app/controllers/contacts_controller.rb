class ContactsController < ApplicationController
  def index
    if params[:search]
      @contacts = Contact.search(params[:search])
      respond_to do |format|
        format.json { render json: @contacts }
      end
    else
      @contacts = Contact.all
    end
  end
end
