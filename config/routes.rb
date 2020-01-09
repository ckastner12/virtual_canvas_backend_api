Rails.application.routes.draw do
  resources :users
  
  resources :pictures, only: [:index, :create]
  resources :animate_mos, only: [:create]
  
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
