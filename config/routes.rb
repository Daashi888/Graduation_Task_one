Rails.application.routes.draw do
  get 'users/index'
  resources :favorites, only: [:create, :destroy]
  devise_for :users
  resources :pets
  root 'pets#index'
  
  resources :conversations do
    resources :messages
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
