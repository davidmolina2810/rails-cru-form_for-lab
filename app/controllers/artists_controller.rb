class ArtistsController < ApplicationController
  def show
    @artist = get_artist
  end

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
  end
  
  def edit
    @artist = get_artist
  end 

  def update 
    @artist = get_artist
    @artist.update(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def destroy
  end

  private
  def get_artist
    Artist.find(params[:id])
  end
end
