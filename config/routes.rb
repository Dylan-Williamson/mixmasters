Rails.application.routes.draw do
  resources :orders, except: [:show, ]
  resources :clients, except: [:index]
  resources :services
  resources :engineers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

new
create
index
show
edit
update
destroy