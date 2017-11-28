class PlaylistsController < ApplicationController
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
