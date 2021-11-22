Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resource :dashboard, only[:show]

  resources :dictators, only:[:index, :show] do
    resources :bookings, only:[:create]
  end

  namespace :owner do
    resources :bookings do
      member do
        patch :decline
        patch :accept
      end
    end
    resources :dictators do
      member do
        patch :new
        patch :create
      end
    end
  end
end
