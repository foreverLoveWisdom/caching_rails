Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/page_caching', to: 'page_caching#show'
  root to: "home#index"
end
