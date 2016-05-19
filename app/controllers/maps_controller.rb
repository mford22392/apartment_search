class MapsController < ApplicationController

  def show
    @map = current_user.map
  end
end
