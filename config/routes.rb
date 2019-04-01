Rails.application.routes.draw do
  get "bundls/index"
  resources :media_items
  resources :bundls

  root "bundls#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
