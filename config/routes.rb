Rails.application.routes.draw do
  resources :consultations
  get 'pages/home'

  get 'pages/contact'

  get 'pages/about'

  root to: 'pages#home'
end
