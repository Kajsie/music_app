require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, ENV['spotify_id'], ENV['spotify_secret'], scope: 'user-read-email user-read-private user-library-read user-top-read'
end
