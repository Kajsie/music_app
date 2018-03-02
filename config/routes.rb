Rails.application.routes.draw do

  resources :playlists do # resources is a method, allows the routing to all CRUD actions in the playlists controllers
    resources :songs # creates nested resources within playlists
  end
  root 'welcome#index' # tells Rails to map requests to the root of the application to the welcome controller's index action

  get '/auth/spotify/callback', to: 'users#spotify'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
