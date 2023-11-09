Rails.application.routes.draw do
  get 'dashboard/index'
  resources :device_manufacturers
  resources :device_categories
  resources :softwares
  resources :devices
  resources :employees

  get 'search', :to => "search#index"

  root "dashboard#index"
end
