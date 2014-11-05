Rails.application.routes.draw do
  devise_for :users
  resources :companies
  resources :themes 
  root 'home#index'
  #get 'users#index'
  
end
