Rails.application.routes.draw do
  get 'users/show'

  get 'users/index'

  resources :words
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
