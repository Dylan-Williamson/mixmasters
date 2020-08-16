Rails.application.routes.draw do
  resources :orders
  resources :clients
  resources :services
  resources :engineers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
