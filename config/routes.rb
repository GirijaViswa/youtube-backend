Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :users, only: [:index, :show, :create] do
    resources :watch_laters, only: [:create, :index]
  end
  resources :categories, only: [:index]
  resources :watch_laters, only: [:index]
 
end
