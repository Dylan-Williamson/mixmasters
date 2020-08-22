Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :orders, only: [:create, :update, :index, :show]
  resources :clients, except: [:index]
  resources :services
  resources :engineers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end