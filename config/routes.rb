Gshop::Application.routes.draw do
  resources :guitars, :homes
  resources :photos
  resources :serial_products do
    post :batch_add, :on => :collection
    resources :photos
  end

  root :to => 'homes#index'
end
