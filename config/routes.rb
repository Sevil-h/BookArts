Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :artworks, only: [:index, :show, :new, :create, :edit, :destroy] do
  resources :bookings, only: [:create]
  end
  resource :dashboard, only: :show
  resources :bookings, only: [:update]

end
