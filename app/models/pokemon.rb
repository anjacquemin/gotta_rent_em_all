class Pokemon < ApplicationRecord
  belongs_to :user
  has_many :rentals

  validates :name, presence: true
  validates :special_capacity, presence: true
  validates :category, presence: true
  validates :description, presence: true

end
