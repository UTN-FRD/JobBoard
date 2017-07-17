Rails.application.routes.draw do
  get 'home/index'

  get 'welcome/index'

resources :pasantia
resources :busqueda
 
 root 'welcome#index'
end
