class FavesController < ApplicationController

  def new
    @fave = Fave.new
  end

  def create
    @fave = Fave.new(fave_params)
    if @fave.save
      redirect_to faves_path
    else
      render :new
    end
  end

  def show
    @fave = Fave.find(params[:id])
    @groups = Group.where(fave_id: @fave.id)
    @fave_image = FaveImage.new
    @fave_images = FaveImage.where(fave_id: @fave.id)
  end

  def index
    @faves = Fave.all
  end

  def edit
    @fave = Fave.find(params[:id])
  end

  def update
    @fave = Fave.find(params[:id])
    if @fave.update(fave_params)
      redirect_to fafe_path(@fave)
    else
      render :edit
    end
  end

  private
  def fave_params
    params.require(:fave).permit(:name, :body, :image)
  end
end
