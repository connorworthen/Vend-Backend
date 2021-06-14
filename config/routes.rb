Rails.application.routes.draw do
  post '/signup', to: 'users#create' 
  post '/login', to: 'sessions#login'
  
  resources :users
  resources :reviews
  resources :stores
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
