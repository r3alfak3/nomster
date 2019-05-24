class Place < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  validates :name, length: { minimum: 3 }
  validates :name, :address, :description, presence: true
end