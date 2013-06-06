Gshop::Application.routes.draw do
  resources :guitars, :homes, :quick_gos
  resources :photos
  resources :serial_products do
    post :batch_add, :on => :collection
    resources :photos
    resources :guitars
  end

  root :to => 'homes#index'
end
