Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :user_details, only: [:create,:update]
  resources :attendances
  resources :targets, only: [:create,:index]
  resources :users 
  resources :tutorials

  post "/login", to: "sessions#create"

  get "/auth", to: "users#show"
end
