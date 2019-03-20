Rails.application.routes.draw do
  get 'collection/index'
  resources :media_items
  resources :bundls
  
  root "collection#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
