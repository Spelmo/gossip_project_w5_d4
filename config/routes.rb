Rails.application.routes.draw do
  get 'signin/new'
  get 'registration/new'
  get '/home', to: 'static_pages#home'

  resources :registration, only: [:new, :create]
  resources :gossip
  get 'signin/new', to:  'signin#new'
  get 'signin' => 'signin#login'
  post 'signin' => 'signin#create'
end
