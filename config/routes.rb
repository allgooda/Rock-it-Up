Rails.application.routes.draw do

  root 'posts#index'
  resources :users, only:[:new, :create, :index, :show]
  resources :sessions, only:[:new, :create, :destroy]
  resources :posts, only:[:new, :create, :destroy, :index, :show]
  resources :profiles, only:[:index]
  get '/like/:id', to: "posts#like"
  get '/login', to: 'sessions#new'
end
