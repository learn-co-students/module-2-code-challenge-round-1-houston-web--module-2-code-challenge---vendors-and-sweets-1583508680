Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sweets, only: [:index,:show]
  resources :vendors, only: [:index,:show]
  resources :vendor_sweets, only: [:new, :create]
  
  
  # get '/sweets', to: "sweets#index", as: "sweets"
  # get '/vendors', to: "vendors#index", as: "vendors"
  # get 'vendors/new', to: "vendors#new", as: "new_vendors"
  # get 'vendors/:id/create', 

end
