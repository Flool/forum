Rails.application.routes.draw do
  root 'groups#index'
  resources :users, only: [:index, :new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :groups, shallow: true do 
    resources :posts, except: [:index] do
      resources :comments, only: [:create, :destroy]
    end
  end
  
  get '/login', to: 'sessions#new'
end
