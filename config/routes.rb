Rails.application.routes.draw do
  root 'homes#show'

  resource :dashboard, only: [:show]
  resource :session, only: [:new, :create, :destroy]
  resources :shouts, only: [:show]
  resources :text_shouts, only: [:create]
  resources :users, only: [:new, :create, :show]
end
