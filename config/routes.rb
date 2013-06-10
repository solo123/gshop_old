Gshop::Application.routes.draw do
  resources :godown_entries do
    resources :godown_items
  end
  resources :godown_items
  resources :stocks
  resources :warehouses
  resources :homes, :quick_gos
  resources :photos

  resources :guitars do
  	resources :photos
    get :select, :on => :collection
  end
  resources :serial_products do
    post :batch_add, :on => :collection
    resources :photos
    resources :guitars
  end

  root :to => 'homes#index'
end
