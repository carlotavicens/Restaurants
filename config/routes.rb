Rails.application.routes.draw do
  resources :comments
  resources :restaurants
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :sessions, only: [:new]
  post 'sessions/create' => 'sessions#create', as: :session_create
  delete 'sessions/destroy' => 'sessions#destroy', as: :session_destroy
  
end
