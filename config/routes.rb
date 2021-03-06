Rails.application.routes.draw do

  devise_for :users, path: '', path_names: { sign_in: 'admin', sign_out: 'logout', registration: 'register'}

  resources :consultations

  get 'about', to: 'pages#about'

  get 'mission', to: 'pages#mission'

  get 'terms', to: 'pages#terms'

  get 'privacy', to: 'pages#privacy'
  
  root to: 'pages#home'
end
