class FavoritesController < ApplicationController

  def create
    @fave = Fave.find(params[:fafe_id])
    @old_fave = current_user.favorite.fave unless current_user.favorite.nil?
    favorite = current_user.create_favorite(fave_id: @fave.id)
  end
end
