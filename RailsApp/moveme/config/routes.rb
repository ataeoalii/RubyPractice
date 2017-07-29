Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

  root 'pages#home'
  resources :users
  get 'pages/home'
  get 'pages/about'
  get 'pages/directions'

  resources :articles do
  	resources :comments
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
