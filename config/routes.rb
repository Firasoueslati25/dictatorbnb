  Rails.application.routes.draw do
    devise_for :users
    root to: 'pages#home'

    # get "dictators", to: "dictators#index"

    resources :bookings, only: [:index]

    resources :dictators, only: [:index, :show] do
      resources :bookings, only: [:new, :create]
    end

    namespace :owner do
      resources :bookings, only: [] do
        member do
          patch :decline
          patch :accept
        end
      end

      resources :dictators, only: [:new, :create, :index]
    end
  end

# Rails.application.routes.draw do
#   root to: 'pages#home'
#   get 'about', to: 'pages#about'
#   get 'contact', to: 'pages#contact'
# end

# Rails.application.routes.draw do
#   resources :dictators do
#     resources :bookings, only: [ :new, :create ]
#   end
# end
