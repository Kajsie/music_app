Rails.application.routes.draw do

  resources :playlists # resources is a method, allows the routing to all CRUD actions in the playlists controllers

  root 'welcome#index' # tells Rails to map requests to the root of the application to the welcome controller's index action

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
