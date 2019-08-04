Rails.application.routes.draw do
  #get 'genres/create'

  #get 'genres/update'

  #get 'genres/show'

  resources :genres
  #get 'artists/create'

  #get 'artists/update'

  #get 'artists/show'

  resources :artists
 # get 'songs/create'

  #get 'songs/update'

  #get 'songs/show'

  resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
