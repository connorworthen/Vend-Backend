Rails.application.routes.draw do
  resources :users, only: [:create, :update, :delete]
  post '/login', to: 'sessions#login'
  get 'auto_login', to: 'sessions#auto_login'

  resources :reviews
  resources :stores
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
