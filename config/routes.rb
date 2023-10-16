Rails.application.routes.draw do
  resources :favorites, only: [:create, :destroy, :index]
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
