Rails.application.routes.draw do
  root 'welcome#welcome'

  resources :meals
  resources :users
  resources :recipes
  resources :menus

  #Login Routes
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  #Logout Routes
  delete '/logout', to: 'sessions#destroy'

  get 'menu/new', to: 'menus#new'

end
