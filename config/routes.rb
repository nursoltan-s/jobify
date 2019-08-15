Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'

  namespace :api, defaults: { format: 'json' } do
    resources :posts, only: [:index, :create]
  end

  match '*path', to: 'pages#index', via: :all
end
