Rails.application.routes.draw do
  devise_for :users
  get 'organizers/home'
  root 'organizers#home'
  resources :homeworks
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
