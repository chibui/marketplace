Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :products

  root 'pages#landing'

  get 'pages/buyerhome'

  get 'pages/sellerhome'

  get 'pages/buyerfaq'

  get 'pages/sellerfaq'

  get 'pages/tos'

  get 'pages/profile'

  get 'store/index'

  devise_for :users
  scope "/admin" do
    resources :users
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
