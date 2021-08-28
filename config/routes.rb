Rails.application.routes.draw do
  root 'pages#login'
  get 'home', to: 'pages#home'
  resources :users
  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'
  resources :users
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

end
