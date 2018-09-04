Rails.application.routes.draw do

  resources :items
  resources :bids

  root 'items#index'
end
