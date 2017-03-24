Rails.application.routes.draw do

  get "/failures/list" => "failures#list"

  devise_for :users, controllers: { confirmations: 'confirmations' }
  resources :failures

  root 'failures#index'
end
