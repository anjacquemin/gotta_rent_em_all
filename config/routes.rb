Rails.application.routes.draw do
  get 'rentals/new'
  get 'rentals/create'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :pokemons do
    resources :rentals, only: [:create]
  end
end
