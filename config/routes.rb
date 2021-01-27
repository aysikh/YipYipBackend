Rails.application.routes.draw do
  resources :comments
  resources :yippers
  resources :users
  resources :locations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
