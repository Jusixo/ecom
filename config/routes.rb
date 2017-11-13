Rails.application.routes.draw do
  get 'charges/new'

  get 'charges/create'

  resources :eshops

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'eshops#index'
end
