class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :image_places
  geocoded_by :address
  after_validation :geocode
  validates :name, length: { minimum: 3 }
  validates :name, :address, :description, presence: true
end