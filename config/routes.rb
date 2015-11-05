Rails.application.routes.draw do
  root 'sessions#index'
  resources :goodspots
  resources :locations, only: [:show]
  resources :sessions,  only: [:index, :new, :create, :destroy]
  resources :users,     only: [:new, :create, :show, :destroy]
  get '/login', to: 'sessions#new'
end
