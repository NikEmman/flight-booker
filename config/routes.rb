Rails.application.routes.draw do
  get 'flights/index'
  get "flights/search"
  get "bookings/new"
  get "bookings/index"
  get '/:id', to: 'bookings#show'
  post "/bookings", to: "bookings#create"

  
  root "flights#index"
end
