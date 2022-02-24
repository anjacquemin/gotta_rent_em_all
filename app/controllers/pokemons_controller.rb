class PokemonsController < ApplicationController

  def index
    @pokemons = policy_scope(Pokemon)
    @markers = @pokemons.geocoded.map do |pokemon|
      {
        lat: pokemon.latitude,
        lng: pokemon.longitude
      }
    end
  end

  def show
    @pokemon = Pokemon.find(params[:id])
    @rental = Rental.new
    authorize @pokemon
    if @pokemon.geocoded?
      @markers = [
        {
          lat: @pokemon.latitude,
          lng: @pokemon.longitude
        }
      ]
    end
  end

  def new
    @pokemon = Pokemon.new
    authorize @pokemon
  end

  def create
    @pokemon = Pokemon.new(params_validation)
    @pokemon.user = current_user
    if @pokemon.save
      redirect_to pokemon_path(@pokemon)
    else
      render :new
    end
    authorize @pokemon
  end

  def edit
    @pokemon = Pokemon.find(params[:id])
    authorize @pokemon
  end

  def update
    @pokemon = Pokemon.find(params[:id])
    authorize @pokemon
    @pokemon.update(params_validation)
    redirect_to pokemon_path(@pokemon)
  end

  def destroy
    @pokemon = Pokemon.find(params[:id])
    authorize @pokemon
    @pokemon.destroy
    redirect_to pokemons_path
  end

  private

  def params_validation
    params.require(:pokemon).permit(:name, :special_capacity, :category, :description, :photo, :address)
  end
end
