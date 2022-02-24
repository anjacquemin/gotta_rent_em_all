class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def dashboard
    @user = current_user
    @pokemons = current_user.pokemons
    @rentals = Rental.where(user_id: current_user.id)
  end

  def home
  end
end
