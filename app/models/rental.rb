class Rental < ApplicationRecord
  belongs_to :pokemon
  belongs_to :user
end


# user validation
# has_many :pokemons, dependent: :destroy

# validates :name, presence: true
# validates :email, presence: true
# validates :password, presence: true
