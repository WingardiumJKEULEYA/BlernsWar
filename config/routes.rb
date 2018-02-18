Rails.application.routes.draw do

  devise_for :users

  authenticated :user do
    root 'dashboard#index', as: :authenticated_root
  end

  root to: 'welcome#index'
  resources   :welcome, only: [:index]
  resources   :dashboard, only: [:index]
  resources   :ninja, only: [:show, :edit, :update]
  resources   :battles, only: [:index]
  resources :products do
    get "delete"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
