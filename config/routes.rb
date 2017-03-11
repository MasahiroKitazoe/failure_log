Rails.application.routes.draw do
  devise_for :users
  resources :failures

  root 'failures#index'
end
