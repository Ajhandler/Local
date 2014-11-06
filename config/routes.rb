Rails.application.routes.draw do
  devise_for :users
  as :user do
  get "/login" => "devise/sessions#new"
  get "/signup" => "devise/sessions#create"
end
  resources :companies
  resources :themes 
  root 'home#index'
  #get 'users#index'
  
end
