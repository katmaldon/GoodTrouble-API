Rails.application.routes.draw do

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

#   root 'events#index'

#   namespace :api do
#     namespace :v1 do

#         post "/signup", to: "users#create"
#         post "/login", to: "auth#login"
#         # get '/profile', to: 'users#profile'
#         get "/auto_login", to: "auth#auto_login"

#         end
#       end

end
