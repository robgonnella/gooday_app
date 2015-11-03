Rails.application.routes.draw do
  root 'sessions#index'
  resources :locations, only: [:show]
  resources :goodspots, only: [:new, :create, :destroy]
  resources :sessions,  only: [:index, :new, :create, :destroy]
  resources :users,     only: [:new, :create, :show, :destroy]
  get '/login', to: 'sessions#new'
end
