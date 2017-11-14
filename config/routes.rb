Rails.application.routes.draw do
  resources :eshops

  get 'charges/new'

  get 'charges/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'eshops#index'

  resources :charges, only: [:new, :create]
  resources :posts
  root to: 'posts#index'
end
