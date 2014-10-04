Rails.application.routes.draw do
 
  devise_for :users
  resources :articles
  resources :likes, only: [:create]
  post 'like/:id', controller: :likes, action: :create

  root 'welcome#index'
end
