Rails.application.routes.draw do
  root 'homes#show'

  resource :dashboard, only: [:show]
  resource :session, only: [:new, :create, :destroy]
  resources :shouts, only: [:show]
  resources :text_shouts, only: [:create]
  resources :photo_shouts, only: [:create]
  resources :users, only: [:index, :new, :create, :show] do
    post 'follow' => 'following_relationships#create'
    delete 'follow' => 'following_relationships#destroy'
  end
end
