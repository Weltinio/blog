Rails.application.routes.draw do
  get 'articles/', to: 'articles#index'
  get 'articles/new', to: 'articles#new'
  get 'articles/:id', to: 'articles#show', as: 'show_article'
  delete 'articles/:id', to: 'articles#delete', as: 'delete_article'
  get 'articles/:id/edit', to: 'articles#edit', as: 'edit_article'
  patch 'articles/:id/edit', to: 'articles#update', as: 'update_article'
  post 'articles/new', to: 'articles#create'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
