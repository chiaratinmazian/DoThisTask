Rails.application.routes.draw do
  devise_for :users
  root to: 'lists#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :lists, only: [:index, :create, :destroy] do
    resources :tasks, only: [:index, :create, :destroy] do
      member do
       patch :complete
      end
    end
  end
  get 'archives', to: 'lists#archives'
end
