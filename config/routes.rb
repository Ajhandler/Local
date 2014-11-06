Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  as :user do
  get "/login" => "devise/sessions#new"
end
  resources :companies
  resources :themes 
  root 'home#index'
  #get 'users#index'
  
end
