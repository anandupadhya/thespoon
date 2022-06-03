Rails.application.routes.draw do
  # read - list all restaurants
  get 'restaurants', to: 'restaurants#index'

  # create - add a restaurant
  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant # form page
  post 'restaurants', to: 'restaurants#create' # create restaurant in DB

  # read - show one particular restaurant
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # update - update a particular restaurant
  get "restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant # form page
  patch "restaurants/:id", to: "restaurants#update" # update restaurant in DB

  # delete - delete a particular restaurant
  delete "restaurants/:id", to: "restaurants#destroy"

  # resources :restaurants
end
