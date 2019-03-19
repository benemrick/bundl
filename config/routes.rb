Rails.application.routes.draw do
  resources :media_items
  get 'say/hello'
  get 'say/goodbye'


  resources :bundls
  root "bundls#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
