Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :cabins, only: [:index, :show, :new, :create]

  resources :cabins, only: [:show] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show] do
     patch '/accept', to: 'bookings#accept'
     patch '/reject', to: 'bookings#reject'
  end

  get '/dashboard', to: 'dashboards#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
