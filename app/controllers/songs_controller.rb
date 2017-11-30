class SongsController < ApplicationController
  def create
    @playlist = Playlist.find(params[:playlist_id])
    @song = @playlist.songs.create(song_params)
    redirect_to playlist_path(@playlist)
  end

  private
    def song_params
      params.require(:song).permit(:name, :artist, :link, :votes)
    end
end
