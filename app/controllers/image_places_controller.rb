class ImagePlacesController < ApplicationController
  before_action :authenticate_user!
 
  def create
    @place = Place.find(params[:place_id])
    @place.image_places.create(image_place_params.merge(user: current_user))
    redirect_to place_path(@place)
  end

  private

  def image_place_params
    params.require(:image_place).permit(:caption, :imagePlace)
  end

end
