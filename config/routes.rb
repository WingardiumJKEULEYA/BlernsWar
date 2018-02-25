Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root 'dashboard#index', as: :authenticated_root
  end

  root to: 'welcome#index'
  resources   :welcome, only: %i[index]
  resources   :dashboard, only: %i[index]
  resources   :ninja, only: %i[show edit update]
  resources   :battles, only: %i[index]
  resources   :products do
    get 'delete'
  end

  post 'fight', to: 'battles#fight'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
