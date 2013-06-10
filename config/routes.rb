Gshop::Application.routes.draw do
  resources :stock_journals


  resources :godown_entries do
    resources :godown_items
    get :entering, :on => :member
  end
  resources :godown_items
  resources :stocks
  resources :warehouses
  resources :homes, :quick_gos
  resources :photos

  resources :guitars do
  	resources :photos
    get :select, :on => :collection
    get :search, :on => :collection
  end
  resources :serial_products do
    post :batch_add, :on => :collection
    resources :photos
    resources :guitars
  end

  root :to => 'homes#index'
end
