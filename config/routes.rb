Rails.application.routes.draw do
  delete "users/sign_out"
  devise_for :users
  resources :dishes
  resources :reviews
  resources :restaurants
  namespace :admin do
    resources :restaurants

  end
  root "restaurants#index"
end
