Rails.application.routes.draw do
  resources :quotes
  resources :donations
  resources :petitions
  resources :videos
  resources :audios
  resources :books
  resources :user_resources
  resources :user_events
  resources :notes
  resources :resources
  resources :events
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
