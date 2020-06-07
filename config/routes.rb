Rails.application.routes.draw do
  resources :invoices
  # resources :incoices
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'invoices#index'
  
end
