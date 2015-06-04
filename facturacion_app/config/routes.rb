Rails.application.routes.draw do
  get 'students/index'
  resources :students
  get 'providers/index'
  resources :providers
  get 'clients/index'
  resources :clients
end
