require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, ENV['spotify_id'], ENV['spotify_secret'], scope: 'user-read-email playlist-modify-public user-library-read user-library-modify user-top-read'
end
