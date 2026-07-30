Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  # ...
  root "products#index"
  get "/products",          to: "products#index",  as: :products

  get "/products/new",      to: "products#new",    as: :new_product
  post "/products",         to: "products#create"

  get "/products/:id",      to: "products#show",   as: :product

  get "/products/:id/edit", to: "products#edit",   as: :edit_product
  patch "/products/:id",    to: "products#update"
  put "/products/:id",      to: "products#update"

  delete "/products/:id",   to: "products#destroy"
end
