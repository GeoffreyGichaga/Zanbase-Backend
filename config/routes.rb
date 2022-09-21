Rails.application.routes.draw do
  # resources :pvs
  resources :tasks
  resources :departments, only: [:create,:update]
  resources :supervisors, only: [:create,:update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :user_details, only: [:create,:update,:show]
  resources :attendances
  resources :targets, only: [:create,:index]
  resources :users, only: [:create,:show]
  resources :tutorials

  post "/login", to: "sessions#create"

  get "/me", to: "users#show"

  get "/pvs", to: "pvs#create"


  delete "/logout", to: "sessions#destroy"

  mount ActionCable.server => '/cable'

end
