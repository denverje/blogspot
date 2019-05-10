Rails.application.routes.draw do
  root to: 'pages#index'
  resources :users, except: [:new]
  post 'users', to: 'users#create'
  get 'about', to: 'pages#about'
  get 'signup', to: 'users#new'
  resources :articles
  
end