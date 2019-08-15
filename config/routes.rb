Rails.application.routes.draw do
  root 'pages#index'
  devise_for :users,
              path: '',
              path_names: {
                sign_in: 'login',
                sign_out: 'logout',
                registration: 'signup'
              },
              controllers: {
                sessions: 'sessions',
                registrations: 'registrations'
              }
  
  namespace :api, defaults: { format: 'json' } do
    resources :posts, only: [:index, :create]
  end

  match '*path', to: 'pages#index', via: :all
end
