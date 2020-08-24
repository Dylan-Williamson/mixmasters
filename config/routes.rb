Rails.application.routes.draw do
  get '/login', to: "sessions#new", as: "/login"
  post '/sessions', to: "sessions#create", as: "sessions"
  delete '/sessions', to: "sessions#destroy"
  get 'auth/google_oauth2/callback', to: "sessions#create_with_google_omniauth"
  resources :orders, only: [:create, :update, :index, :show]
  resources :users do
    resources :services
  end
  resources :services, only: [:index, :create, :new]
  resources :reviews, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end