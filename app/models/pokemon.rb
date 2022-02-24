class Pokemon < ApplicationRecord
  belongs_to :user
  has_many :rentals

  validates :name, presence: true
  validates :special_capacity, presence: true
  validates :category, presence: true
  validates :description, presence: true
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_name_and_special_capacity_category,
    against: [ :name, :special_capacity, :category ],
    using: {
      tsearch: { prefix: true }
    }
end
