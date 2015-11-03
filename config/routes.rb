Rails.application.routes.draw do
  root 'sessions#index'
  resources :locations
  resources :users
  resources :goodspots
  resources :sessions
  get '/login', to: 'sessions#new'
end
