Rails.application.routes.draw do
  get 'dishes/index'
  get 'dishes/new'
  get 'dishes/create'
  get 'dishes/show'
  get 'dishes/edit'
  get 'dishes/update'
  get 'dishes/destroy'
  resources :books
  resources :dishes
  # get 'restaurants/index'
  # get 'restaurants/new'
  # get 'restaurants/create'
  # get 'restaurants/show'
  # get 'restaurants/edit'
  # get 'restaurants/update'
  get 'restaurants/dish/2'
  resources :restaurants
  get "dish" , to: "restaurants#dish"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
