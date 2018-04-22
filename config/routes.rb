Rails.application.routes.draw do


  get 'sessions/new'

  get 'sessions/create'

  resource :users, only: %i(new create)

  resource :sessions, only: %i(new create destroy)


  resources :pictures

  root 'pictures#index'

end
