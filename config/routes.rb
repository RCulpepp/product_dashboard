Rails.application.routes.draw do
 
  root 'products#index'

  get 'products/' => 'products#index'

  get 'products/new' => 'products#new'

  get 'products/:id' => 'products#show'

  get 'products/:id/edit' => 'products#edit'

  post 'products/' => 'products#create'

  patch 'products/:id' => 'products#update'

  delete 'products/:id' => 'products#destroy'

  get 'comments/' => 'comments#index'

  post 'comments/:product_id' => 'comments#create'
end
