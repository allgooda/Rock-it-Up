Rails.application.routes.draw do

  root 'posts#index'
  resources :users, only:[:new, :create, :index]
  resources :sessions, only:[:new, :create, :destroy]
  resources :posts, only:[:new, :create, :destroy, :index]
  get '/login', to: 'sessions#new'
end
