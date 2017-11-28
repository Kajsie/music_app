class PlaylistsController < ApplicationController
  def new
  end

  def create
    render plain: params[:playlist].inspect
  end
end
