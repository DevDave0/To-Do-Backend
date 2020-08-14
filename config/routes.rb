Rails.application.routes.draw do
  resources :boards
  resources :comments
  resources :tasks
  resources :tasklists
  resources :users

  post '/login', to: 'auth#create'

end
