Rails.application.routes.draw do
  root to: 'home#index'
  get "up" => "rails/health#show", as: :rails_health_check

  resources :genres, only: [:index, :show, :new, :create, :edit, :update]

  resources :directors, only: [:index, :show, :new, :create, :edit, :update]

  resources :movies, only: [:index, :show, :new, :create, :edit, :update] do
    patch :release, on: :member
  end
end
