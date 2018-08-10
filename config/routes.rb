Rails.application.routes.draw do
  get 'products/create'
  root to: 'categories#index'

  resources :categories, only: [:index, :create, :show ] do
    resources :products, only: [:new]
  end

  # resources :products, only: [:create]
resources :products, only: [:create] do
    resources :product_categories, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
