Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  post 'companies/:company_id', to: 'claims#create', as: 'claim_create'
  delete 'claims/:id', to: 'claims#destroy', as: 'claim_delete'
  devise_for :users
  resources :companies
  resources :claims
  root to: 'companies#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
