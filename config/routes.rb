Rails.application.routes.draw do
  resources :places
  get 'bands/new'
  get 'password_resets/new'
  get 'password_resets/edit'
  root 'static_pages#home'

  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :password_resets#,     only: [:new, :create, :edit, :update]
  resources :bands
  # get 'users/new'
  # get 'static_pages/help'
  # get 'static_pages/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
