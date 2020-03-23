Rails.application.routes.draw do

  
 
  # Want my API to be satisfiers.com/api/v1/resource 
  namespace :api do
      namespace :v1 do
        resources :users 
        resources :needs
        resources :satisfiers
        
      end
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
