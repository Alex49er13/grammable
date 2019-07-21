Rails.application.routes.draw do
  devise_for :models
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root "grams#index"
resources :grams, only: [:new, :create]
end
