Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #Kids profile routes
  resources :kids 

  #users routes
  get "/signup" => "users#new"
  get "/users/:id/edit" => "users#edit"
  resources :users

  #sessions routes
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"

  #Photos routes
  resources :photos 
end
#resources :photos
# Automatically generates the following routes
# get "/photos" => "photos#index", as: "photos"
# get "/photos/new" => "photos#new", as: "new_photo"
# post "/photos" => "photos#create"
# get "/photos/:id" => "photos#show", as: "photo"
# get "/photos/:id/edit" => "photos#edit", as: "edit_photo"
# patch "/photos/:id" => "photos#update"
# delete "/photos/:id" => "photos#destroy"