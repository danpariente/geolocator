Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :areas, only: :index
      resources :locations, only: :create
    end
  end
end
