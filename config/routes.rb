Rails.application.routes.draw do
  root 'application#current_user'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/secret', to: 'secrets#show'
end
