class PokemonsController < ApplicationController

  def index
    if params[:query].present?
      @pokemons = policy_scope(Pokemon).search_by_name_and_special_capacity_category(params[:query])
    else
      @pokemons = policy_scope(Pokemon)
    end

    @markers = @pokemons.geocoded.map do |pokemon|
      {
        lat: pokemon.latitude,
        lng: pokemon.longitude,
        image_url: helpers.asset_url("pokeball_marker2.png"),
        info_window: render_to_string(partial: "info_window", locals: { pokemon: pokemon })
      }
    end

  end

  def show
    @pokemon = Pokemon.find(params[:id])
    @rental = Rental.new
    @unavailable_dates = Rental.unavailable_dates(@pokemon).to_json
    authorize @pokemon
    if @pokemon.geocoded?
      @markers = [
        {
          lat: @pokemon.latitude,
          lng: @pokemon.longitude,
          image_url: helpers.asset_url("pokeball_marker2.png"),
          info_window: render_to_string(partial: "info_window", locals: { pokemon: @pokemon })
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
