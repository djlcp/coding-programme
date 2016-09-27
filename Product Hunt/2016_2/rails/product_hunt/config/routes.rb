Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'products#index'

  resources :products, only: [:show] do
    resources :comments, only: [:index, :new, :create, :edit, :update]
  end

end
