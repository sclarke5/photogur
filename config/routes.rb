Rails.application.routes.draw do



  resource :users

  resource :sessions


  resources :pictures

  root 'pictures#index'

end
