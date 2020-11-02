class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find_by(id: params[:id]) 
  end

  def new
    @song = Song.new
  end

  def create
    byebug
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def edit
  end
  
  def update
  end

  def destroy
  end

  private
  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
