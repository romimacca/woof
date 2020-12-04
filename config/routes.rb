Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  resources :questions
  resources :answer_pets
  resources :question_pets
  resources :postulation_pets
  resources :pets

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  root to: "home#index"
  get "profile", to: "home#profile", as: "profile"
  get "my_pets", to: "home#my_pets", as: "my_pets"
  get "my_postulations", to: "home#my_postulations", as: "my_postulations"
  get "pet/:pet_id/postulation", to: "home#pet_postulation", as: "pet_postulation"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
