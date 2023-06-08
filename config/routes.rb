Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'
  get 'tasks/new', to: 'tasks#new' # create and show the form
  post 'tasks', to: 'tasks#create' # actually create a new task in DB
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  get 'tasks/:id', to: 'tasks#show', as: :task
  delete 'tasks/:id', to: 'tasks#destroy'
  # Defines the root path route ("/")
  # root "articles#index"
end
