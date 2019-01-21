Rails.application.routes.draw do



  get 'rooms/new'
  get 'password_resets/new'
  get 'password_resets/edit'
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/signup',  to: 'users#new'
  #post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get 'createroom', to: 'rooms#new'
  post 'createroom', to: 'rooms#create'
  #get '/activate',   to: 'account_activations#activate'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :rooms
  resources :meetings

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
