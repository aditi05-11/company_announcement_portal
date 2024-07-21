Rails.application.routes.draw do

  get "up" => "rails/health#show", as: :rails_health_check
  root "home#index"
  get 'signup', to: 'users#new'
  resources :users
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :posts
  
end
