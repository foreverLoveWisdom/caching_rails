Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/page_caching', to: 'page_caching#show'
  root to: "home#index"
  get '/home/show', to: 'home#show'

  get '/bikes', to: 'bikes#index'
  get '/users', to: 'users#index'
end
