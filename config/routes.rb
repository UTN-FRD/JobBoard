Rails.application.routes.draw do
  get 'welcome/index'

resources :pasantia
 
 root 'welcome#index'
end
