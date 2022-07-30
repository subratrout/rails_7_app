Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'tokens/create'
    end
  end
  resources :employees
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :users, only: [:index, :show, :create, :update, :destroy]
      resources :tokens, only: [:create]
      resources :products, only: [:index, :show, :create, :update]
    end 
  end
end
