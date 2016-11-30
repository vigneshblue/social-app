Rails.application.routes.draw do
  
  
  get '/about', to:'static_pages#about'
  get '/help', to:'static_pages#help'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#index'

  resources :users
  get '/signup', to:'users#new'
  post '/signup', to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
