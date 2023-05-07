Rails.application.routes.draw do
  resources :users,:sessions, only: [:create,:index,:show,:destory]
  post '/signup', to: 'users#create'
  get '/me', to: 'users#show'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destory'
end
