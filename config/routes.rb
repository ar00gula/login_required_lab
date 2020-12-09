Rails.application.routes.draw do
  resources :sessions

  delete '/sessions', to: 'sessions#destroy', as: 'logout'

  get '/secrets', to: 'secrets#show', as: 'secrets'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
