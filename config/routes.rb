Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'

  # Rotas públicas
  root 'home#index'

  # Rotas de sessão (login e logout)
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # Rotas administrativas
  namespace :admin do
    get 'dashboard', to: 'dashboard#index'
    resources :users
  end

  # Rotas para enemies
  resources :enemies, only: [:update, :destroy]  # Adicione aqui
end
