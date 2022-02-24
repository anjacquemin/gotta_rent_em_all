class Rental < ApplicationRecord
  belongs_to :pokemon
  belongs_to :user

# user validation
# has_many :pokemons, dependent: :destroy

  def self.unavailable_dates(pokemon)
    all_rentals = []
    Rental.where(pokemon_id: pokemon.id).each do |data|
      hash = { from: data.rental_beginning.to_s("yyyy-M-dd"), to: data.rental_end.to_s("yyyy-M-dd") }
      all_rentals << hash
    end
    all_rentals
  end
end
