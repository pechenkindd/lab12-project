Rails.application.routes.draw do
  get 'automorphic/input'
  get 'automorphic/result'
  resource :session, only: [:new, :create, :destroy]
  resources :users

  root "homepage#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
