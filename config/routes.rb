Rails.application.routes.draw do


  get '/artists/:id', to:'artists#show', as: 'artist'

  get '/artists', to: 'artists#index'

  devise_for :users
  root 'static_pages#home'
  get    '/home',    to: 'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/login',   to: 'static_pages#home'
  get 'search/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
