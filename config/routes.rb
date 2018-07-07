Rails.application.routes.draw do
  root 'welcome#welcome'
  resources :meals
  resources :users
  resources :recipes

  #Login Routes
  get '/signin', to: 'sessions#new'
  get '/signin', to: 'sessions#create'

  
end
