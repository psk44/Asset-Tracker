Rails.application.routes.draw do
  get 'dashboard/index'
  resources :device_manufacturers
  resources :device_categories
  resources :softwares
  resources :devices
  resources :employees
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dashboard#index"
end
