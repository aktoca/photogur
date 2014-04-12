class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
    @most_recent_pictures = Picture.most_recent_five
    @created_before = Picture.created_before(1.month.ago).count 
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to picture_url
    else
      render :new
    end
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])

    if @picture.update_attributes(picture_params)
      redirect_to "/pictures/#{@pictures.id}"
    else 
      render :edit
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to pictures_url
  end

  private
  def picture_params
    params.require(:picture).permit(:artist, :title, :url)
  end

end
