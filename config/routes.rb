Rails.application.routes.draw do
  resources :posts do
  # get '/pages', to: 'pages#index'
  # post 'pages', to: 'pages#create'
  # get '/pages/new', to: 'pages#new', as: 'new_page'
  # get '/pages/:id', to: 'pages#show', as: 'page'
  # get '/pages/:id/edit', to: 'pages#edit', as: 'edit_page'
  # patch '/pages/:id', to: 'pages#update'
  # delete '/pages/:id', to: 'pages#destroy'
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :comments
end
resources :pages
end