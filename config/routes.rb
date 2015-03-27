Rails.application.routes.draw do
root 'restaurants#index'

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:show, :new, :create]
  end

  resources :reviews, only: [:index, :show, :new, :create]
end
