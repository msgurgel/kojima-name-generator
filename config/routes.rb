Rails.application.routes.draw do
  root 'kojima_names#new'

  resources :kojima_names, only: [ :create, :show]
end
