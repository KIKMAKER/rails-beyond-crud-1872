Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants do
    resources :reviews, only: [:new, :create, :index]
    collection do
      # creates a route after /restaurants/XXX
      get :top
      get :bottom
    end
    member do
      # creates a route after /restaurants/:id/XXX
      get :chef
    end
  end
  resources :reviews, only: [:edit, :update, :destroy]







end
