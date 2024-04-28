Rails.application.routes.draw do
  get 'flights/index'
  
  root "flights#index"
end
