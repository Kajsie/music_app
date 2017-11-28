class PlaylistsController < ApplicationController
  # each instance variable is used for storing the specific instance of a playlist
  # the instance variables will be passed to the view
  def show
    @playlist = Playlist.find(params[:id])
  end

  def new
  end

  def create
    @playlist = Playlist.new(playlist_params)

    @playlist.save
    redirect_to @playlist
  end


  private

  def playlist_params
    params.require(:playlist).permit(:title, :description)
  end
end
