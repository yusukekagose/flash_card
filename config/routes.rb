Rails.application.routes.draw do

  get '/dashboard', to:'home#dashboard'

  resources :rankings, only: [:index]

  resources :likes, only: [:destroy,:create,:index]

  resources :dictionaries do
    collection do
      delete 'destroy_multiple'
      post 'create_multiple'
    end
  end
  resources :words do
    resources :meanings, only:[:new, :create]
  end

  resources :meanings, except:[:new, :create,:show]  do
    resources :examples, only:[:new,:create,:destroy]
    member do
      get 'meaning_examples'
    end
  end

  resources :dictionaries, only:[:new,:create,:destroy]

  resources :users, only: [:show,:index] do
    collection do
      get 'dictionary'
    end
  end



  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
