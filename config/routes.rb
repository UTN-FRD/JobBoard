Rails.application.routes.draw do
  get 'home/index'

  get 'welcome/index'

resources :pasantia
 
 root 'welcome#index'
end
