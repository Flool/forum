Rails.application.routes.draw do
  root 'users#index'
  resources :users, only: [:index, :new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :posts do
    resources :comments, only: [:create, :destroy], shallow: true
  end
  get '/login', to: 'sessions#new'
end
