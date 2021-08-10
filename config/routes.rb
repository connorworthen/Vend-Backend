Rails.application.routes.draw do
  resources :users, only: [:show, :create, :update, :delete, :index]
  post '/login', to: 'sessions#login'
  get 'auto_login', to: 'sessions#auto_login'
  resources :items

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
