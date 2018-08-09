Rails.application.routes.draw do
  root to: 'categories#index'

  resources :categories, only: [:index, :create, :show ]

  resources :products, only: [:create]
  # resources :products do
  #   resources :product_categories, only: [:create]
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
