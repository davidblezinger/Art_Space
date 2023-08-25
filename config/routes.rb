Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  resources :artworks do
    resources :bookings, only: [:create]
  end

  resources :users, only: [:show]
end
