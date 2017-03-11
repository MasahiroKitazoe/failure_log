Rails.application.routes.draw do
  resources :failures

  root 'failures#index'
end
