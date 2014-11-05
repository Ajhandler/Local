Rails.application.routes.draw do
  devise_for :users
  resources :companies
  resources :templates 
  root 'home#index'
  
end
