Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
  resources :session
  get 'signin' , to:'users#new' , as: 'signin'
  get 'login', to:'session#new' , as:'login' 
  # get 'test' , to: 'users#test' , as: 'test'
  resources :users
  resources :posts do 
    resources :users 
  end
  
  # root "articles#index"
end
