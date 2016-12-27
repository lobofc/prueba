Rails.application.routes.draw do
  
  resources :usuarios	
  root :to => 'usuarios#index'	
  get 'usuarios/index'
  get 'usuarios/socio'
  get 'usuarios/nuevo'
end
