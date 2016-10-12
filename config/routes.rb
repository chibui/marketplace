Rails.application.routes.draw do
  get 'store/index'

  resources :products
  root 'pages#landing'

  get 'pages/buyerhome'

  get 'pages/sellerhome'

  get 'pages/buyerfaq'

  get 'pages/sellerfaq'

  get 'pages/tos'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
