class ApartmentListsController < ApplicationController

  def index
    @apartments = current_user.apartment_lists
  end
end
