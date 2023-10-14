Rails.application.routes.draw do
  devise_for :users
  # Contacts
  resources :contacts, only: %i[new create]

  # Pages
  get '/home', to:'pages#home'
  get '/nosotros', to:'pages#nosotros'
  get '/servicios', to:'pages#servicios'
  get '/contacto', to:'pages#contacto'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
