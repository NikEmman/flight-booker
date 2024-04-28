Rails.application.routes.draw do
  get 'flights/index'
  get "flights/search"
  
  root "flights#index"
end
