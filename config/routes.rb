Rails.application.routes.draw do
  root 'users#index'
  resources :users, only:[:new, :create, :index]
  resources :sessions, only:[:new, :create, :destroy]

  get '/login', to: 'sessions#new'
end
