Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :artworks do
    resources :bookings
  end
end
