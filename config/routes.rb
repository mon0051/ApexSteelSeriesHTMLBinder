Rails.application.routes.draw do
  resources :keys

  get 'mapper/index'
  root 'mapper#index'


end
