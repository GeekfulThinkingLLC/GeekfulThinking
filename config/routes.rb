Rails.application.routes.draw do

  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', registration: 'register'}

  resources :consultations

  get 'pages/home'

  get 'pages/contact'

  get 'pages/about'

  root to: 'pages#home'
end
