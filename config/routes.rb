Rails.application.routes.draw do
  devise_for :users
  resources :companies
  root 'home#index'
  
end
