Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :clients, except: %i[destroy]
      resources :service_orders, except: %i[destroy]
    end
  end
end
