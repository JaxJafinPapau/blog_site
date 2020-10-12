Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'

  

  #Using hand rolls here to demonstrate proficiency
  get '/posts', to: 'posts#index'
  get '/posts/new', to: 'posts#new'
  post '/posts', to: 'posts#create'

  get '/home', to: 'home#index'
  get '/home/show', to: 'home#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
