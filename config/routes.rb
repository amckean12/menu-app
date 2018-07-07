Rails.application.routes.draw do
  root 'welcome#welcome'
  resources :meals
  resources :users
  resources :recipes
end
