class RentalsController < ApplicationController

  def create
    @rental = Rental.new(rental_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @pokemon = Pokemon.find(params[:pokemon_id])
    @rental.pokemon = @pokemon
    @rental.user = current_user
    @rental.save
    authorize @rental
    redirect_to pokemons_path
  end

private

  def rental_params
    params.require(:rental).permit(:rental_beginning, :rental_end, :pokemon_id, :user_id)
  end
end
