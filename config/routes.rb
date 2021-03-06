Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :lists, only: [:index, :show, :new, :create] do
    resources :moviemarks, only: [:new, :create]
  end
  resources :moviemarks, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
