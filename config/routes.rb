Rails.application.routes.draw do
  devise_for :users
  root to: 'artworks#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :artworks, only: [:index, :show, :new, :create, :edit, :destroy] do
    collection do
      resources :my_artworks, only: :index
    end
  resources :bookings, only: [:create]
  end
  resource :dashboard, only: :show
  resources :bookings, only: [:update, :destroy] do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: :index
end
