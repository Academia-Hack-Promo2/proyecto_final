Rails.application.routes.draw do
  
  get 'students/index'
  resources :students
  
  get 'providers/index'
  resources :providers
  get "/providers/:provider_id/new_bill" => "provider_bills#new"

  
  get 'clients/index'
  resources :clients
  get "/clients/:client_id/services/:service_id/new_bill" => "bills#new"
  get "/clients/:client_id/services" => "services#bindex"
  
  resources :services

  resources :provider_bills

  resources :bills

end
