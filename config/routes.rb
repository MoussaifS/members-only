Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :user
  resources :post
  # Defines the root path route ("/")
  # root "articles#index"
end
