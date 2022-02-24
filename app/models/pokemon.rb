class Pokemon < ApplicationRecord
  belongs_to :user
  has_many :rentals

  validates :name, presence: true
  validates :special_capacity, presence: true
  validates :category, presence: true
  validates :description, presence: true
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
