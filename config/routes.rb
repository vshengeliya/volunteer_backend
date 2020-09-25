Rails.application.routes.draw do
  get 'comments/index'
  get 'comments/show'
  get 'comments/create'
  get 'comments/destroy'
  resources :events, :attendances

  namespace :api do
    namespace :v1 do
      resources :users
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end 
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
