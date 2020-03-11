Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :events
  resources :services
  root "welcome#index"
  devise_for :users
  resources :users
  resources :notes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 resources :requests 
	get '/info', to: 'welcome#info'

end
