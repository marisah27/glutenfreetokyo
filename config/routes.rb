Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'toppages#index'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:new, :create]
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'about', to: 'abouts#index'
  
  get '/shops/genre/:genre', to: 'shops#genre', as: 'shop_genre'
  get '/shops/area/:area', to: 'shops#area', as: 'shop_area'
  resources :shops
  
end
