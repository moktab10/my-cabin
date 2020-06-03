Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :cabins, only: [:index, :new, :create]

  resources :cabins, only: [:show] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
