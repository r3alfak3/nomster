class ImagePlace < ApplicationRecord
  belongs_to :user
  belongs_to :place

  mount_uploader :imagePlace, ImagePlaceUploader
end
