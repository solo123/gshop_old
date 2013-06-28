Gshop::Application.routes.draw do
  resources :product_prices


  resources :products


  resources :stock_taking_items


  resources :stock_takings do
    resources :stock_taking_items
    get :get_stock, :on => :member
    get :entering, :on => :member
    post :save_quantity, :on => :member
  end


  resources :manufactories


  resources :accessories do
  	resources :photos
    get :select, :on => :collection
    get :search, :on => :collection
  end


  resources :sales_sheets do
    resources :sales_sheet_items
    resources :customers do
      get :select, :on => :member
      get :search, :on => :collection
      post :search, :on => :collection
    end
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
    resources :stock_journals
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
  resources :reports do
    collection do
      get :sales_monthly, :catalog_summary

    end 
  end

  root :to => 'homes#index'
end
