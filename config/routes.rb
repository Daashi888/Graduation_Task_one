Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/index'
  resources :favorites, only: [:create, :destroy]
  resources :pets
  root 'pets#index'

  devise_for :users
  resources :users, only: [:index, :show]
  
  resources :conversations do
    resources :messages
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
