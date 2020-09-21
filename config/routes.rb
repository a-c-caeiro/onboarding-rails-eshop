Rails.application.routes.draw do
  get 'welcome/index'

  resources :users do
  	resources :orders
  end
  resources :products

  root 'welcome#index'
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


