Rails.application.routes.draw do
  resources :comments
  resources :restaurants
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :session, only: [:new]
  post 'session/create' => 'session#create', as: :sessions_create
  delete 'session/destroy' => 'session#destroy', as: :sessions_destroy
  
end
