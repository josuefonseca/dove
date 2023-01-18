Rails.application.routes.draw do
  get 'login', to: 'login#index'
  post 'login', to: 'login#logon'
  get 'logout', to: 'login#logout'

  get 'home', to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
