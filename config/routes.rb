Rails.application.routes.draw do
 
  resources :articles
  resources :likes, only: [:create]
  post 'like/:id', controller: :likes, action: :create

  root 'welcome#index'
end
