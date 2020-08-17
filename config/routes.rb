Rails.application.routes.draw do
  resources :orders, only: [:create, :update, :show]
  resources :clients, except: [:new, :index]
  resources :services
  resources :engineers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end