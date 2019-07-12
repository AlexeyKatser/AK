Rails.application.routes.draw do
  resources :services
  root "welcome#index"
  devise_for :users
  resources :users
  resources :notes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 resources :requests 
end
