Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/orders" => "orders#create"
  get "/orders" => "orders#index"
  get "orders/:id" => "orders#show"
end
