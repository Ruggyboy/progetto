Rails.application.routes.draw do

  get 'bands/new'
  get 'password_resets/new'
  get 'password_resets/edit'
  root 'static_pages#home'

  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get 'bands/custom_search', to: 'bands#custom_search'

  #devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}

  resources :users
  resources :password_resets#,     only: [:new, :create, :edit, :update]
  resources :bands
  resources :places
  # get 'users/new'
  # get 'static_pages/help'
  # get 'static_pages/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
