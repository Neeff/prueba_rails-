Rails.application.routes.draw do
  get 'todos', to: 'todos#index'
  get 'todos/new', to: 'todos#new'
  get 'todos/list', to: 'todos#list', as: 'list_todo'
  post 'todos', to: 'todos#create'
  get 'todos/:id', to: 'todos#show', as: 'todo'
  get 'todos/:id/edit', to: 'todos#edit', as: 'edit_todo'
  patch 'todos/:id', to: 'todos#update',as: 'update_todo'
  delete 'todos/:id', to: 'todos#destroy', as: 'delete_todo'
  patch 'todos/:id/complete', to: 'todos#complete', as: 'complete'

  root 'todos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
