class PokemonsController < ApplicationController

  def index
    @pokemons = policy_scope(Pokemon)
  end

  def show
    @pokemon = Pokemon.find(params[:id])
    authorize @pokemon
  end

  def new
    @pokemon = Pokemon.new
    authorize @pokemon
  end

  def create
    @pokemon = Pokemon.new(params_validation)
    @pokemon.user = current_user
    authorize @pokemon
  end

  # def edit
  #   @pokemon = Pokemon.new(params_validation)
  #   @pokemon.user = current_user
  #   authorize @pokemon
  # end

  # def update
  #   @pokemon = Pokemon.new(params_validation)
  #   @pokemon.user = current_user
  #   authorize @pokemon
  # end

  private

  def params_validation
    params.require(:pokemon).permit(:name, :special_capacity, :category, :description, :photo)
  end

end
