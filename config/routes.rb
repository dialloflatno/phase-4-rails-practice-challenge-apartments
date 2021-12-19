Rails.application.routes.draw do

  resources :leases, only:[ :destroy ]
  resources :tenants,  only:[ :create, :index, :update, :destroy ]
  resources :apartments, only:[ :create, :index, :update, :destroy ]
  
end

