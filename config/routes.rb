Rails.application.routes.draw do
  get 'flights/index'
  get "flights/search"
  get "bookings/new"
  get "bookings/index"
  get '/:id', to: 'bookings#show'

  
  root "flights#index"
end
