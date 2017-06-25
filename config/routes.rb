Rails.application.routes.draw do

  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', registration: 'register'}

  resources :consultations

  get 'about', to: 'pages#about'

  get 'terms', to: 'pages#terms'

  get 'privacy', to: 'pages#privacy'
  
  root to: 'pages#home'
end
