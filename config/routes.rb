Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # read all restaurants
  get "/restaurants", to: "restaurants#index"
  # read one restaurant :id makes id dynamic
  get "restaurants/:id", to: "restaurants#show" 
  #create a restaurant
  get "restaurants/new", to: "restaurants#new" 
  post "restaurants", to: "restaurants#create"
  # edit a restaurant
  get "restaurants/:id/edit", to: "restaurants#edit"
  patch "restaurants/:id", to: "restaurants#edit"
  # delete a restaurant
  delete "/restuarants/:id", to "restaurants#destroy"
  # Defines the root path route ("/")
  # root "articles#index"
end
