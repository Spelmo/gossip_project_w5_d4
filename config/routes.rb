Rails.application.routes.draw do
  get '/home', to: 'static_pages#home'
  resources :gossip
end
