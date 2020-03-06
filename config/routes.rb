Rails.application.routes.draw do
  # get 'vendorsweets/index'

  # get 'vendorsweets/edit'

  # get 'vendorsweets/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/sweets', to: "sweets#index", as: "sweets"
  # get '/vendors', to: "vendors#index", as: "vendors"
 resources :vendors
 resources :sweets
 resources :vendorsweets
 
    
end
