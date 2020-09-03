Rails.application.routes.draw do
  get '/', to: 'services#index', as: "/services"
  get '/login', to: "sessions#new", as: "/login"
  get '/signup', to: "users#new", as: "/signup"
  post '/sessions', to: "sessions#create", as: "sessions"
  delete '/sessions', to: "sessions#destroy"
  get 'auth/google_oauth2/callback', to: "sessions#create_with_google_omniauth"
  resources :users, only: [:create, :edit, :update, :show, :destroy]
  resources :services do
    resources :orders
    resources :reviews, only: [:index]
  end
  resources :orders, only: [:show, :index] do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end