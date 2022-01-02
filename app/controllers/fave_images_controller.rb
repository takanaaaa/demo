class FaveImagesController < ApplicationController

  def create
    fave_image = FaveImage.new(fave_image_params)
    fave = Fave.find(params[:fafe_id])
    fave_image.fave_id = fave.id
    fave_image.save!
    redirect_back(fallback_location: root_path)
  end

  private
  def fave_image_params
    params.require(:fave_image).permit(:image)
  end
end
