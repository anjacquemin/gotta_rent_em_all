class AddAddressToPokemons < ActiveRecord::Migration[6.1]
  def change
    add_column :pokemons, :address, :string
    add_column :pokemons, :string, :string
  end
end
