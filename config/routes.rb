Gshop::Application.routes.draw do
  resources :manufactories


  resources :accessories do
  	resources :photos
    get :select, :on => :collection
    get :search, :on => :collection
  end


  resources :sales_sheets do
    resources :sales_sheet_items
    resources :customers
    get :calculate, :on => :member
    get :entering, :on => :member
    get :print, :on => :member
  end
  resources :sales_sheet_items
  resources :customers do
    get :select, :on => :collection
    get :search, :on => :collection
  end

  resources :stock_journals
  resources :godown_entries do
    resources :godown_items
    get :entering, :on => :member
    get :calculate, :on => :member
  end
  resources :godown_items
  resources :stocks do
    get :serials, :on => :member
    get :add_serials, :on => :member
  end
  resources :warehouses do
    resources :stocks
  end
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
