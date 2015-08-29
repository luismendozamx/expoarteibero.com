Rails.application.routes.draw do

  resources :art_pieces
  resources :user_subscriptions

  get 'inscripcion', to: 'static_pages#home', as: :registro
  put 'save_application', to: 'users#save_application', as: :save_application

  get 'admin', to: 'admin#index', as: :admin
  get 'admin/:user_id', to: 'admin#show',  as: :admin_user

  root 'static_pages#home'

  devise_for :users
  devise_scope :user do
    get 'register', to: 'devise/registrations#new', as: :register
    get 'login', to: 'devise/sessions#new', as: :login
    get 'logout', to: 'devise/sessions#destroy', as: :logout
  end

end
