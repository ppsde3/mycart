Rails.application.routes.draw do

  root 'product#index'
  get 'product', to: 'product#index'
  get 'product/new', to: 'product#new'
  get 'product/:id', to: 'product#show'
end
