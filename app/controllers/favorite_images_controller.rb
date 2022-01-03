class FavoriteImagesController < ApplicationController

  def create
    @fave_image = FaveImage.find(params[:fave_image_id])
    fave = @fave_image.fave
    favorite = current_user.favorite_images.new(fave_image_id: @fave_image.id)
    favorite.save
    @fave_images = FaveImage.includes(:image_favorited_users).where(fave_id: fave.id).sort{|a,b|
      b.image_favorited_users.size <=> a.image_favorited_users.size
    }
    fave.image_id = @fave_images.first.image_id
    fave.update(image_id: fave.image_id)
  end

  def destroy
    @fave_image = FaveImage.find(params[:fave_image_id])
    fave = @fave_image.fave
    favorite = current_user.favorite_images.find_by(fave_image_id: @fave_image.id)
    favorite.destroy
    @fave_images = FaveImage.includes(:image_favorited_users).where(fave_id: fave.id).sort{|a,b|
      b.image_favorited_users.size <=> a.image_favorited_users.size
    }
    fave.image_id = @fave_images.first.image_id
    fave.update(image_id: fave.image_id)
  end
end
