Rails.application.routes.draw do
  root 'opinions#index'
  resources :users, only: %i[edit update show new create]
  resources :opinions, only: %i[index new create destroy]
  resources :followings, only: %i[create destroy]
  resources :votes, only: %i[create destroy]
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  get 'votes', to: 'votes#create'
  get 'votes/:id', to: 'votes#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
