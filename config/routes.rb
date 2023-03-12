Rails.application.routes.draw do
  devise_for :users , controllers: { 
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   
  # get 'test' , to: 'users#test' , as: 'test'
  resources :posts  do 
    resources :users 
  end
  
  root "posts#index"
  # root "articles#index"
end
