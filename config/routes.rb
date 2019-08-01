Rails.application.routes.draw do
  # get 'songs/create'

  # get 'songs/update'

  # get 'songs/show'

  # get 'genres/create'

  # get 'genres/update'

  # get 'genres/show'

  # get 'artist/create'

  # get 'artist/update'

  # get 'artist/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
    resources :artists, only: [:index, :show, :new, :create, :edit, :update]
    resources :genres, only: [:index, :show, :new, :create, :edit, :update]
    resources :songs, only: [:index, :show, :new, :create, :edit, :update]
end
