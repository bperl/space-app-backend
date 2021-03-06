Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :curiosities
  resources :users

  post '/login', to: 'auth#create'
  get '/welcome', to: 'application#welcome'
  post '/users/likes', to: 'users#addLike'
  post '/users/nolikes', to: 'users#removeLike'
  get '/asteroids', to: 'asteroids#index'

end
