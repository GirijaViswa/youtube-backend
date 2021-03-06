Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :users, only: [:index, :show, :create] do
    resources :watch_laters, only: [:create, :index]
  end
  resources :categories, only: [:index]
  get '/only_watch_laters' => 'watch_laters#showall'
  delete '/only_watch_laters/:id' => 'watch_laters#destroy'
 
end
