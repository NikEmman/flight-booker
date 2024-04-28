Rails.application.routes.draw do
  get 'flights/index'
  get "flights/search"
  get "bookings/new"
  get "bookings/index"
  
  root "flights#index"
end
