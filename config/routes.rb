Rails.application.routes.draw do

  root 'cocktails#index'

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
  # you don't need the id of the cocktail
end
