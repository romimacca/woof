Rails.application.routes.draw do

  resources :pets

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  root to: "home#index"
  get "home/profile"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
