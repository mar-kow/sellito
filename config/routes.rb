Rails.application.routes.draw do

  devise_for :users
  root 'homepage#index'

  get '/about', to: 'homepage#about'

  get '/cookies', to: 'homepage#cookies'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
