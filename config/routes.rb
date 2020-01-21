Rails.application.routes.draw do
  post '/users/login', to: 'users#login'
  resources :users do
    resources :bookmarks
  end 

  resources :pictures, only: [:index, :create, :show, :update]
  resources :animate_mos, only: [:create, :update, :destroy]
  resources :p5_shapes, only: [:create, :update, :destroy]
  
  mount ActionCable.server => '/cable'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
