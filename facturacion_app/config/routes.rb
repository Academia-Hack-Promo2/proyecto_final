Rails.application.routes.draw do
  get 'students/index'
  resources :students
  get 'providers/index'
  resources :providers
  get 'clients/index'
  resources :clients
 
  resources :services

  resources :provider_bills

  resources :bills
  get "/clients/:id/new_bill" => "bills#new"
end
