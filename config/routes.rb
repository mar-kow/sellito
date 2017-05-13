Rails.application.routes.draw do

  devise_for :users
  root 'homepage#index'

  resources :posts

  resources :categories

  get '/about', to: 'homepage#about'

  get '/cookies', to: 'homepage#cookies'

  get '/my_posts', to: 'posts#user_posts'
end
