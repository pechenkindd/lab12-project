Rails.application.routes.draw do
  resource :session, only: [:new, :create]
  resources :users

  root "homepage#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
