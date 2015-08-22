Rails.application.routes.draw do
  get 'cvs/index'

  get 'cvs/new'

  get 'cvs/create'

  get 'cvs/destroy'

  
 
  resources :cvs, only: [:index, :new, :create, :destroy]
  root 'pages#home'
  
  
end
