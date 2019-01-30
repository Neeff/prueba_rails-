Rails.application.routes.draw do
  get 'todos', to: 'todos#index'
  get 'todos/new', to: 'todos#new'
  root 'todos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
