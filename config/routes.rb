Rails.application.routes.draw do

  root 'homepage#index'

  get '/about', to: 'homepage#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
