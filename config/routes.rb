Rails.application.routes.draw do
  resources :meanings

  resources :users, only: [:show,:index] do
    collection do
      get 'dictionary'
    end
  end


  resources :words
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
