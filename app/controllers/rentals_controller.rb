class RentalsController < ApplicationController


  def show
    # raise
    @rental = Rental.find(params[:id])
    authorize @rental
  end

  def create
    @rental = Rental.new(rental_params)
    @pokemon = Pokemon.find(params[:pokemon_id])
    @rental.pokemon = @pokemon
    @rental.user = current_user
    @rental.save
    authorize @rental
    redirect_to dashboard_booking_path(@rental)
  end

private

  def rental_params
    params.require(:rental).permit(:rental_beginning, :rental_end, :pokemon_id, :user_id)
  end
end
