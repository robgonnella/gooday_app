Rails.application.routes.draw do
  root 'users#index'
  resources :locations
  resources :users
  resources :goodspots
end
