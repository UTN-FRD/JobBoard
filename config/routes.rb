Rails.application.routes.draw do
  resources :alumnos
  get 'home/index'

  get 'welcome/index'

resources :pasantia
resources :busqueda
 
 root 'welcome#index'
end
