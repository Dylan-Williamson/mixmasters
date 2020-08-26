Rails.application.routes.draw do
  get '/login', to: "sessions#new", as: "/login"
  get '/signup', to: "users#new", as: "/signup"
  post '/sessions', to: "sessions#create", as: "sessions"
  delete '/sessions', to: "sessions#destroy"
  get 'auth/google_oauth2/callback', to: "sessions#create_with_google_omniauth"
  resources :orders, only: [:create, :update, :index, :show] do
    resources :reviews, only: [:new, :create, :index]
  end
  resources :users, only: [:create, :edit, :update, :show]
  resources :services 
  # resources :reviews, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end