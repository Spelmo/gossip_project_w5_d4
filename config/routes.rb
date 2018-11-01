Rails.application.routes.draw do
  get 'likes/new'
  get 'likes/create'
  get 'likes/delete'
  get 'signin/new'
  get 'registration/new'
  get '/home', to: 'static_pages#home'

  resources :registration, only: [:new, :create]
  resources :gossip
  resources :comment
  resources :likes, only: [:new, :create, :destroy]

  get 'signin/new', to:  'signin#new'
  get 'signin' => 'signin#login'
  post 'signin' => 'signin#create'
end
