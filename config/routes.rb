Rails.application.routes.draw do
  get 'comments/index'
  get 'comments/show'
  get 'comments/create'
  get 'comments/destroy'
  resources :events, :attendances, :comments

  

  namespace :api do
    namespace :v1 do
      resources :users
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      get 'all_users', to: 'users#all_users'
    end 
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
