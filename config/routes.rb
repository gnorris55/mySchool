Rails.application.routes.draw do
  devise_for :users
  get 'organizers/home'
  root 'organizers#home'
  resources :homeworks
  resources :users

  get '/redirect', to: 'organizers#redirect', as: 'redirect'
  get '/callback', to: 'organizers#callback', as: 'callback'
  get '/calendars', to: 'organizers#calendars', as: 'calendars'
  get '/events/:calendar_id', to: 'organizers#events', as: 'events', calendar_id: /[^\/]+/
  post '/events/:calendar_id', to: 'organizers#new_event', as: 'new_event', calendar_id: /[^\/]+/
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
