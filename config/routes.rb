Rails.application.routes.draw do
  # get 'rentals/new'
  # get 'rentals/create'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/dashboard", to: "pages#dashboard", as: "dashboard"

  resources :pokemons do
    resources :rentals, only: [:create, :show]
  end
end
