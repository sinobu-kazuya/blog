Rails.application.routes.draw do
  devise_for :users
  root to: "poems#index"
  resources :users, only: [:new, :create, :show]
  resources :poems
end
