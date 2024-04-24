Rails.application.routes.draw do
  root 'todos#index'
  get 'todos' => 'todos#index'
  get 'todos/new' => 'todos#new'
  post 'todos/create' => 'todos#create'
  get 'todos/:id/edit' => 'todos#edit'
  # post 'todos/:id' => 'todos#update'
  patch 'todos/:id' => 'todos#update'
  delete 'todos/:id' => 'todos#destroy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
