Rails.application.routes.draw do

  get 'profile/index'
  devise_for :users

  root 'home#index'
  get 'users/index'
  get 'welcome/index'
  get 'profile/index'

  resources :users, :only => [:show]
  match '/users', to: 'users#index', via: 'get'
  match '/users/:id', to: 'users#show', via: 'get'
  
end
