Rails.application.routes.draw do
  resources :lancamentos
  resources :linha_creditos
  resources :carteiras
  resources :categoria
  
  get 'login', to: 'login#index'
  post 'login', to: 'login#logon'
  delete 'logout', to: 'login#logout'

  get 'home', to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
