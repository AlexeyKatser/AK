Rails.application.routes.draw do
  get 'notes/show'
  get 'notes/new'
  root "welcome#index"
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 resources :requests 
end
