class PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.all
  end
  # each instance variable is used for storing the specific instance of a playlist
  # the instance variables will be passed to the view
  def show
    @playlist = Playlist.find(params[:id])
  end

  def new
    @playlist = Playlist.new
  end

  def edit
    @playlist = Playlist.find(params[:id])
  end

  def create
    @playlist = Playlist.new(playlist_params)

    if @playlist.save
      redirect_to @playlist
    else
      render 'new'
    end
  end

  # redirect_to will issue another request
  # rendering is done within the same request as the form submission
  def update
    @playlist = Playlist.find(params[:id])

    if @playlist.update(playlist_params)
      redirect_to @playlist
    else
      render 'edit'
    end
  end

  def destroy
    @playlist = Playlist.find(params[:id])
    @playlist.destroy

    redirect_to playlists_path
  end

  private

  def playlist_params
    params.require(:playlist).permit(:title, :description)
  end
end
