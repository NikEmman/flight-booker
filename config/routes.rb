Rails.application.routes.draw do
  get 'flights/index'
  get "flights/search"
  get "bookings/new"
  get "bookings/index"
  post "/bookings", to: "bookings#create"
  resources :bookings, only: [:show]

  
  root "flights#index"
end
