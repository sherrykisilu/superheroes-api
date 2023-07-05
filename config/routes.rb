# config/routes.rb

Rails.application.routes.draw do
  get 'hero/powers'
  resources :heroes, only: [:index, :show]
  resources :powers, only: [:index, :show, :update]
  resources :hero_powers, only: [:create]
end
