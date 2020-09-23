Rails.application.routes.draw do
  get 'welcome/index'

  resources :users
  resources :orders do
  	get "detail"
  end
  resources :products
  resources :suppliers
  root 'welcome#index'
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


