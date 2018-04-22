Rails.application.routes.draw do


  resource :users, only: %i(new create)

  resource :sessions, only: %i(new create destroy)


  resources :pictures

  root 'pictures#index'

end
