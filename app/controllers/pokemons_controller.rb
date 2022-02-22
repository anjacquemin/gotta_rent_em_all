class PokemonsController < ApplicationController

  def index
    @pokemons = Pokemon.all
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new(params_validation)
    @pokemon.user = current_user
  end

  private

  def params_validation
    params.require(:pokemon).permit(:name, :special_capacity, :category, :description)
  end

end
