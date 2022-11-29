Rails.application.routes.draw do
  resources :dishes
  resources :reviews
  resources :restaurants
  namespace :admin do
    resources :restaurants

  end
end
