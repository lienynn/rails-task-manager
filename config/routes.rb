Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # READ ALL
  get "tasks", to: "tasks#index"

  # CREATE
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  # READ 1 to see each individual task
  get "tasks/:id", to: "tasks#show", as: :task

  # UPDATE
  get "tasks/:id/edit", to: "tasks#edit"
  patch "tasks/:id", to: "tasks#update"

  # DELETE
  delete "tasks/:id", to: "tasks#destroy"
end
