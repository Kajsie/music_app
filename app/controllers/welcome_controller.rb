class WelcomeController < ApplicationController
  def index
  end

  def search_artist
    # @artists = RSpotify::Artist.search('Arctic Monkeys')
    render :index
  end
end
