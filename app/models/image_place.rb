class ImagePlace < ApplicationRecord
  belongs_to :user
  belongs_to :place
  has_many :places

  mount_uploader :imagePlace, ImagePlaceUploader
end
